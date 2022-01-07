
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct bhnd_usb_devinfo {struct resource_list sdi_rl; } ;
typedef int device_t ;


 struct bhnd_usb_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
bhnd_usb_get_reslist(device_t dev, device_t child)
{
 struct bhnd_usb_devinfo *sdi;

 sdi = device_get_ivars(child);

 return (&sdi->sdi_rl);
}
