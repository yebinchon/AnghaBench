
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int fdc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct fdc_data* device_get_softc (int ) ;
 int fdc_ids ;
 int fdc_initial_reset (int ,struct fdc_data*) ;
 int fdc_isa_alloc_resources (int ,struct fdc_data*) ;
 int fdc_release_resources (struct fdc_data*) ;

__attribute__((used)) static int
fdc_isa_probe(device_t dev)
{
 int error;
 struct fdc_data *fdc;

 fdc = device_get_softc(dev);
 fdc->fdc_dev = dev;


 error = ISA_PNP_PROBE(device_get_parent(dev), dev, fdc_ids);
 if (error == ENXIO)
  return (ENXIO);


 error = fdc_isa_alloc_resources(dev, fdc);
 if (error == 0)
  error = fdc_initial_reset(dev, fdc);

 fdc_release_resources(fdc);
 return (error);
}
