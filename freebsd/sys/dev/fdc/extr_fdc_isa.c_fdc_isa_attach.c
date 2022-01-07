
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int fdc_dev; } ;
typedef int device_t ;


 struct fdc_data* device_get_softc (int ) ;
 int fdc_attach (int ) ;
 int fdc_hints_probe (int ) ;
 int fdc_isa_alloc_resources (int ,struct fdc_data*) ;
 int fdc_release_resources (struct fdc_data*) ;
 int fdc_start_worker (int ) ;

__attribute__((used)) static int
fdc_isa_attach(device_t dev)
{
 struct fdc_data *fdc;
 int error;

 fdc = device_get_softc(dev);
 fdc->fdc_dev = dev;
 error = fdc_isa_alloc_resources(dev, fdc);
 if (error == 0)
  error = fdc_attach(dev);
 if (error == 0)
  error = fdc_hints_probe(dev);
 if (error == 0)
  fdc_start_worker(dev);
 else
  fdc_release_resources(fdc);
 return (error);
}
