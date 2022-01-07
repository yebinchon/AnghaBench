
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int mps_parent_dmat; int * mps_regs_resource; int mps_bhandle; int mps_btag; int mps_regs_rid; int mps_flags; int mps_dev; } ;
struct mps_ident {int flags; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 int ENXIO ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bzero (struct mps_softc*,int) ;
 struct mps_softc* device_get_softc (int ) ;
 int mps_attach (struct mps_softc*) ;
 struct mps_ident* mps_find_ident (int ) ;
 int mps_get_tunables (struct mps_softc*) ;
 int mps_pci_alloc_interrupts (struct mps_softc*) ;
 int mps_pci_free (struct mps_softc*) ;
 int mps_printf (struct mps_softc*,char*) ;
 int pci_enable_busmaster (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
mps_pci_attach(device_t dev)
{
 struct mps_softc *sc;
 struct mps_ident *m;
 int error;

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));
 sc->mps_dev = dev;
 m = mps_find_ident(dev);
 sc->mps_flags = m->flags;

 mps_get_tunables(sc);


 pci_enable_busmaster(dev);


 sc->mps_regs_rid = PCIR_BAR(1);
 if ((sc->mps_regs_resource = bus_alloc_resource_any(dev,
     SYS_RES_MEMORY, &sc->mps_regs_rid, RF_ACTIVE)) == ((void*)0)) {
  mps_printf(sc, "Cannot allocate PCI registers\n");
  return (ENXIO);
 }
 sc->mps_btag = rman_get_bustag(sc->mps_regs_resource);
 sc->mps_bhandle = rman_get_bushandle(sc->mps_regs_resource);


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
    &sc->mps_parent_dmat)) {
  mps_printf(sc, "Cannot allocate parent DMA tag\n");
  mps_pci_free(sc);
  return (ENOMEM);
 }

 if (((error = mps_pci_alloc_interrupts(sc)) != 0) ||
     ((error = mps_attach(sc)) != 0))
  mps_pci_free(sc);

 return (error);
}
