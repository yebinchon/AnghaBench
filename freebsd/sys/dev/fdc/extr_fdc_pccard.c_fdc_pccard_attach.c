
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int flags; int fdct; } ;
typedef int device_t ;


 int FDC_NE765 ;
 int FDC_NODMA ;
 int FDC_NOFAST ;
 int bus_generic_attach (int ) ;
 struct fdc_data* device_get_softc (int ) ;
 int device_set_flags (int ,int) ;
 int fdc_add_child (int ,char*,int) ;
 int fdc_attach (int ) ;
 int fdc_pccard_alloc_resources (int ,struct fdc_data*) ;
 int fdc_release_resources (struct fdc_data*) ;
 int fdc_start_worker (int ) ;

__attribute__((used)) static int
fdc_pccard_attach(device_t dev)
{
 int error;
 struct fdc_data *fdc;
 device_t child;

 fdc = device_get_softc(dev);
 fdc->flags = FDC_NODMA | FDC_NOFAST;
 fdc->fdct = FDC_NE765;
 error = fdc_pccard_alloc_resources(dev, fdc);
 if (error == 0)
  error = fdc_attach(dev);
 if (error == 0) {
  child = fdc_add_child(dev, "fd", -1);
  device_set_flags(child, 0x24);
  error = bus_generic_attach(dev);
 }
 if (error == 0)
  fdc_start_worker(dev);
 else
  fdc_release_resources(fdc);
 return (error);
}
