
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct lebuffer_devinfo {struct resource_list ldi_rl; } ;
typedef int device_t ;


 struct lebuffer_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
lebuffer_get_resource_list(device_t dev, device_t child)
{
 struct lebuffer_devinfo *ldi;

 ldi = device_get_ivars(child);
 return (&ldi->ldi_rl);
}
