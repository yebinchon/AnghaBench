
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int fdc_thread; } ;
typedef int device_t ;


 struct fdc_data* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int fdc_thread ;
 int kproc_create (int ,struct fdc_data*,int *,int ,int ,char*,int ) ;

void
fdc_start_worker(device_t dev)
{
 struct fdc_data *fdc;

 fdc = device_get_softc(dev);
 kproc_create(fdc_thread, fdc, &fdc->fdc_thread, 0, 0,
     "fdc%d", device_get_unit(dev));
}
