
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int mpr_parent_dmat; int * mpr_regs_resource; int mpr_bhandle; int mpr_btag; int mpr_regs_rid; int mpr_flags; int mpr_dev; } ;
struct mpr_ident {int device; int flags; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 int ENXIO ;






 int PCIR_BAR (int) ;
 int PCI_MAXMAPS_0 ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bzero (struct mpr_softc*,int) ;
 struct mpr_softc* device_get_softc (int ) ;
 int mpr_attach (struct mpr_softc*) ;
 struct mpr_ident* mpr_find_ident (int ) ;
 int mpr_get_tunables (struct mpr_softc*) ;
 int mpr_pci_alloc_interrupts (struct mpr_softc*) ;
 int mpr_pci_free (struct mpr_softc*) ;
 int mpr_printf (struct mpr_softc*,char*) ;
 int pci_enable_busmaster (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
mpr_pci_attach(device_t dev)
{
 struct mpr_softc *sc;
 struct mpr_ident *m;
 int error, i;

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));
 sc->mpr_dev = dev;
 m = mpr_find_ident(dev);
 sc->mpr_flags = m->flags;

 switch (m->device) {
 case 131:
 case 129:
 case 130:
 case 128:
  mpr_printf(sc, "HBA is in Non Secure mode\n");
  return (ENXIO);
 case 133:
 case 132:
  mpr_printf(sc, "HBA is in Configurable Secure mode\n");
  break;
 default:
  break;
 }

 mpr_get_tunables(sc);


 pci_enable_busmaster(dev);

 for (i = 0; i < PCI_MAXMAPS_0; i++) {
  sc->mpr_regs_rid = PCIR_BAR(i);

  if ((sc->mpr_regs_resource = bus_alloc_resource_any(dev,
      SYS_RES_MEMORY, &sc->mpr_regs_rid, RF_ACTIVE)) != ((void*)0))
   break;
 }

 if (sc->mpr_regs_resource == ((void*)0)) {
  mpr_printf(sc, "Cannot allocate PCI registers\n");
  return (ENXIO);
 }

 sc->mpr_btag = rman_get_bustag(sc->mpr_regs_resource);
 sc->mpr_bhandle = rman_get_bushandle(sc->mpr_regs_resource);


 if (bus_dma_tag_create( bus_get_dma_tag(dev),
    1, 0,
    BUS_SPACE_MAXADDR,
    BUS_SPACE_MAXADDR,
    ((void*)0), ((void*)0),
    BUS_SPACE_MAXSIZE_32BIT,
    BUS_SPACE_UNRESTRICTED,
    BUS_SPACE_MAXSIZE_32BIT,
    0,
    ((void*)0), ((void*)0),
    &sc->mpr_parent_dmat)) {
  mpr_printf(sc, "Cannot allocate parent DMA tag\n");
  mpr_pci_free(sc);
  return (ENOMEM);
 }

 if (((error = mpr_pci_alloc_interrupts(sc)) != 0) ||
     ((error = mpr_attach(sc)) != 0))
  mpr_pci_free(sc);

 return (error);
}
