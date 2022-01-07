
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_flags; int mfi_regs_rid; int mfi_irq_rid; int mfi_dev; int * mfi_irq; int mfi_parent_dmat; int * mfi_regs_resource; int mfi_bhandle; int mfi_btag; } ;
struct mfi_ident {int flags; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int MFI_FLAGS_1064R ;
 int MFI_FLAGS_1078 ;
 int MFI_FLAGS_GEN2 ;
 int MFI_FLAGS_SKINNY ;
 int MFI_FLAGS_TBOLT ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bzero (struct mfi_softc*,int) ;
 struct mfi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mfi_attach (struct mfi_softc*) ;
 struct mfi_ident* mfi_find_ident (int ) ;
 int mfi_free (struct mfi_softc*) ;
 scalar_t__ mfi_msi ;
 int mfi_pci_free (struct mfi_softc*) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_enable_busmaster (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
mfi_pci_attach(device_t dev)
{
 struct mfi_softc *sc;
 struct mfi_ident *m;
 int count, error;

 sc = device_get_softc(dev);
 bzero(sc, sizeof(*sc));
 sc->mfi_dev = dev;
 m = mfi_find_ident(dev);
 sc->mfi_flags = m->flags;


 pci_enable_busmaster(dev);


 if ((sc->mfi_flags & MFI_FLAGS_1064R) ||
     (sc->mfi_flags & MFI_FLAGS_1078)) {

  sc->mfi_regs_rid = PCIR_BAR(0);
 }
 else if ((sc->mfi_flags & MFI_FLAGS_GEN2) ||
   (sc->mfi_flags & MFI_FLAGS_SKINNY) ||
  (sc->mfi_flags & MFI_FLAGS_TBOLT)) {

  sc->mfi_regs_rid = PCIR_BAR(1);
 }
 if ((sc->mfi_regs_resource = bus_alloc_resource_any(sc->mfi_dev,
     SYS_RES_MEMORY, &sc->mfi_regs_rid, RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "Cannot allocate PCI registers\n");
  return (ENXIO);
 }
 sc->mfi_btag = rman_get_bustag(sc->mfi_regs_resource);
 sc->mfi_bhandle = rman_get_bushandle(sc->mfi_regs_resource);

 error = ENOMEM;


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
    &sc->mfi_parent_dmat)) {
  device_printf(dev, "Cannot allocate parent DMA tag\n");
  goto out;
 }


 sc->mfi_irq_rid = 0;
 count = 1;
 if (mfi_msi && pci_alloc_msi(sc->mfi_dev, &count) == 0) {
  device_printf(sc->mfi_dev, "Using MSI\n");
  sc->mfi_irq_rid = 1;
 }
 if ((sc->mfi_irq = bus_alloc_resource_any(sc->mfi_dev, SYS_RES_IRQ,
     &sc->mfi_irq_rid, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(sc->mfi_dev, "Cannot allocate interrupt\n");
  error = EINVAL;
  goto out;
 }

 error = mfi_attach(sc);
out:
 if (error) {
  mfi_free(sc);
  mfi_pci_free(sc);
 }

 return (error);
}
