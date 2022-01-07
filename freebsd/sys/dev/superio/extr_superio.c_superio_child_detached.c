
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct superio_devinfo {struct resource_list resources; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 struct superio_devinfo* device_get_ivars (int ) ;
 scalar_t__ resource_list_release_active (struct resource_list*,int ,int ,int ) ;
 int superio_printf (struct superio_devinfo*,char*) ;

__attribute__((used)) static void
superio_child_detached(device_t dev, device_t child)
{
 struct superio_devinfo *dinfo;
 struct resource_list *rl;

 dinfo = device_get_ivars(child);
 rl = &dinfo->resources;

 if (resource_list_release_active(rl, dev, child, SYS_RES_IRQ) != 0)
  superio_printf(dinfo, "Device leaked IRQ resources\n");
 if (resource_list_release_active(rl, dev, child, SYS_RES_MEMORY) != 0)
  superio_printf(dinfo, "Device leaked memory resources\n");
 if (resource_list_release_active(rl, dev, child, SYS_RES_IOPORT) != 0)
  superio_printf(dinfo, "Device leaked I/O resources\n");
}
