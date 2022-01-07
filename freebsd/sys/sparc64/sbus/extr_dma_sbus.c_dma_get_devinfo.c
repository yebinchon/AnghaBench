
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct dma_devinfo {struct ofw_bus_devinfo const ddi_obdinfo; } ;
typedef int device_t ;


 struct dma_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
dma_get_devinfo(device_t bus, device_t child)
{
 struct dma_devinfo *ddi;

 ddi = device_get_ivars(child);
 return (&ddi->ddi_obdinfo);
}
