
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct macgpio_devinfo {int mdi_resources; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 struct macgpio_devinfo* device_get_ivars (int ) ;
 struct resource* resource_list_alloc (int *,int ,int ,int,int*,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
macgpio_alloc_resource(device_t bus, device_t child, int type, int *rid,
       rman_res_t start, rman_res_t end, rman_res_t count,
       u_int flags)
{
 struct macgpio_devinfo *dinfo;

 dinfo = device_get_ivars(child);

 if (type != SYS_RES_IRQ)
  return (((void*)0));

 return (resource_list_alloc(&dinfo->mdi_resources, bus, child, type,
     rid, start, end, count, flags));
}
