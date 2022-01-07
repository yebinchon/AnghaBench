
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct apb_ivar {struct resource_list resources; } ;
typedef int device_t ;


 struct apb_ivar* device_get_ivars (int ) ;

__attribute__((used)) static struct resource_list *
apb_get_resource_list(device_t dev, device_t child)
{
 struct apb_ivar *ivar;

 ivar = device_get_ivars(child);
 return (&(ivar->resources));
}
