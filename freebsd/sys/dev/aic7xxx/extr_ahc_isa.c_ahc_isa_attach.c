
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct aic7770_identity {int dummy; } ;
struct ahc_softc {int dev_softc; int parent_dmat; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int AHC_MAXTRANSFER_SIZE ;
 int AHC_NSEG ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENODEV ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 struct ahc_softc* ahc_alloc (int ,char*) ;
 int ahc_attach (struct ahc_softc*) ;
 int ahc_free (struct ahc_softc*) ;
 struct aic7770_identity* ahc_isa_find_device (int ,int ) ;
 int ahc_set_unit (struct ahc_softc*,int ) ;
 int aic7770_config (struct ahc_softc*,struct aic7770_identity*,int ) ;
 int aic_dma_tag_create (struct ahc_softc*,int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *) ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int printf (char*,int) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
ahc_isa_attach(device_t dev)
{
 struct aic7770_identity *entry;
 bus_space_tag_t tag;
 bus_space_handle_t bsh;
 struct resource *regs;
 struct ahc_softc *ahc;
 char *name;
 int zero;
 int error;

 zero = 0;
 regs = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &zero, RF_ACTIVE);
 if (regs == ((void*)0))
  return (ENOMEM);

 tag = rman_get_bustag(regs);
 bsh = rman_get_bushandle(regs);
 entry = ahc_isa_find_device(tag, bsh);
 bus_release_resource(dev, SYS_RES_IOPORT, zero, regs);
 if (entry == ((void*)0))
  return (ENODEV);






 name = malloc(strlen(device_get_nameunit(dev)) + 1, M_DEVBUF, M_NOWAIT);
 if (name == ((void*)0))
  return (ENOMEM);
 strcpy(name, device_get_nameunit(dev));
 ahc = ahc_alloc(dev, name);
 if (ahc == ((void*)0))
  return (ENOMEM);

 ahc_set_unit(ahc, device_get_unit(dev));


 error = aic_dma_tag_create(ahc, bus_get_dma_tag(dev),
                    1, 0,
                  BUS_SPACE_MAXADDR_32BIT,
                   BUS_SPACE_MAXADDR,
                 ((void*)0), ((void*)0),
                  BUS_SPACE_MAXSIZE_32BIT,
                    AHC_NSEG,
                   AHC_MAXTRANSFER_SIZE,
                0,
       &ahc->parent_dmat);

 if (error != 0) {
  printf("ahc_isa_attach: Could not allocate DMA tag "
         "- error %d\n", error);
  ahc_free(ahc);
  return (ENOMEM);
 }
 ahc->dev_softc = dev;
 error = aic7770_config(ahc, entry, 0);
 if (error != 0) {
  ahc_free(ahc);
  return (error);
 }

 ahc_attach(ahc);
 return (0);
}
