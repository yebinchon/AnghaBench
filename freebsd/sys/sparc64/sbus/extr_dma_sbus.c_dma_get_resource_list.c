
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct dma_devinfo {struct resource_list ddi_rl; } ;
typedef int device_t ;


 struct dma_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
dma_get_resource_list(device_t dev, device_t child)
{
 struct dma_devinfo *ddi;

 ddi = device_get_ivars(child);
 return (&ddi->ddi_rl);
}
