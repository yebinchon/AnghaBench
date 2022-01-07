
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int flags; int dev_softc; int parent_dmat; } ;
struct ahc_pci_identity {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int AHC_39BIT_ADDRESSING ;
 int AHC_MAXTRANSFER_SIZE ;
 int AHC_NSEG ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 struct ahc_softc* ahc_alloc (int ,char*) ;
 int ahc_attach (struct ahc_softc*) ;
 struct ahc_pci_identity* ahc_find_pci_device (int ) ;
 int ahc_free (struct ahc_softc*) ;
 int ahc_pci_config (struct ahc_softc*,struct ahc_pci_identity*) ;
 int ahc_set_unit (struct ahc_softc*,int ) ;
 int aic_dma_tag_create (struct ahc_softc*,int ,int,int ,int,int ,int *,int *,int ,int ,int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int printf (char*,int) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
ahc_pci_attach(device_t dev)
{
 struct ahc_pci_identity *entry;
 struct ahc_softc *ahc;
 char *name;
 int error;

 entry = ahc_find_pci_device(dev);
 if (entry == ((void*)0))
  return (ENXIO);






 name = malloc(strlen(device_get_nameunit(dev)) + 1, M_DEVBUF, M_NOWAIT);
 if (name == ((void*)0))
  return (ENOMEM);
 strcpy(name, device_get_nameunit(dev));
 ahc = ahc_alloc(dev, name);
 if (ahc == ((void*)0))
  return (ENOMEM);

 ahc_set_unit(ahc, device_get_unit(dev));





 if (sizeof(bus_addr_t) > 4)
                ahc->flags |= AHC_39BIT_ADDRESSING;


 error = aic_dma_tag_create(ahc, bus_get_dma_tag(dev),
                    1, 0,
       (ahc->flags & AHC_39BIT_ADDRESSING)
       ? 0x7FFFFFFFFFLL
       : BUS_SPACE_MAXADDR_32BIT,
                   BUS_SPACE_MAXADDR,
                 ((void*)0), ((void*)0),
                  BUS_SPACE_MAXSIZE_32BIT,
                    AHC_NSEG,
                   AHC_MAXTRANSFER_SIZE,
                0,
       &ahc->parent_dmat);

 if (error != 0) {
  printf("ahc_pci_attach: Could not allocate DMA tag "
         "- error %d\n", error);
  ahc_free(ahc);
  return (ENOMEM);
 }
 ahc->dev_softc = dev;
 error = ahc_pci_config(ahc, entry);
 if (error != 0) {
  ahc_free(ahc);
  return (error);
 }

 ahc_attach(ahc);
 return (0);
}
