
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * node; } ;
struct xenbus_device_ivars {TYPE_1__ xd_local_watch; TYPE_1__ xd_otherend_watch; } ;
typedef int device_t ;


 int device_delete_child (int ,int ) ;
 struct xenbus_device_ivars* device_get_ivars (int ) ;
 int xenbusb_free_child_ivars (struct xenbus_device_ivars*) ;
 int xs_unregister_watch (TYPE_1__*) ;

__attribute__((used)) static void
xenbusb_delete_child(device_t dev, device_t child)
{
 struct xenbus_device_ivars *ivars;

 ivars = device_get_ivars(child);







 if (ivars->xd_otherend_watch.node != ((void*)0))
  xs_unregister_watch(&ivars->xd_otherend_watch);
 if (ivars->xd_local_watch.node != ((void*)0))
  xs_unregister_watch(&ivars->xd_local_watch);

 device_delete_child(dev, child);
 xenbusb_free_child_ivars(ivars);
}
