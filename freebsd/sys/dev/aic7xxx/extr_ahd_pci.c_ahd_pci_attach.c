
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int flags; int dev_softc; int parent_dmat; } ;
struct ahd_pci_identity {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int AHD_39BIT_ADDRESSING ;
 int AHD_MAXTRANSFER_SIZE ;
 int AHD_NSEG ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 struct ahd_softc* ahd_alloc (int ,char*) ;
 int ahd_attach (struct ahd_softc*) ;
 struct ahd_pci_identity* ahd_find_pci_device (int ) ;
 int ahd_free (struct ahd_softc*) ;
 int ahd_pci_config (struct ahd_softc*,struct ahd_pci_identity*) ;
 int ahd_set_unit (struct ahd_softc*,int ) ;
 int ahd_sysctl (struct ahd_softc*) ;
 int aic_dma_tag_create (struct ahd_softc*,int ,int,int ,int,int ,int *,int *,int ,int ,int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int printf (char*,int) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
ahd_pci_attach(device_t dev)
{
 struct ahd_pci_identity *entry;
 struct ahd_softc *ahd;
 char *name;
 int error;

 entry = ahd_find_pci_device(dev);
 if (entry == ((void*)0))
  return (ENXIO);






 name = malloc(strlen(device_get_nameunit(dev)) + 1, M_DEVBUF, M_NOWAIT);
 if (name == ((void*)0))
  return (ENOMEM);
 strcpy(name, device_get_nameunit(dev));
 ahd = ahd_alloc(dev, name);
 if (ahd == ((void*)0))
  return (ENOMEM);

 ahd_set_unit(ahd, device_get_unit(dev));





 if (sizeof(bus_addr_t) > 4)
                ahd->flags |= AHD_39BIT_ADDRESSING;


 error = aic_dma_tag_create(ahd, bus_get_dma_tag(dev),
                    1, 0,
       (ahd->flags & AHD_39BIT_ADDRESSING)
       ? 0x7FFFFFFFFF
       : BUS_SPACE_MAXADDR_32BIT,
                   BUS_SPACE_MAXADDR,
                 ((void*)0), ((void*)0),
                  BUS_SPACE_MAXSIZE_32BIT,
                    AHD_NSEG,
                   AHD_MAXTRANSFER_SIZE,
                0,
       &ahd->parent_dmat);

 if (error != 0) {
  printf("ahd_pci_attach: Could not allocate DMA tag "
         "- error %d\n", error);
  ahd_free(ahd);
  return (ENOMEM);
 }
 ahd->dev_softc = dev;
 error = ahd_pci_config(ahd, entry);
 if (error != 0) {
  ahd_free(ahd);
  return (error);
 }

 ahd_sysctl(ahd);
 ahd_attach(ahd);
 return (0);
}
