
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int XST_NIL ;
 int xenbus_get_node (int ) ;
 int xenbusb_delete_child (int ,int ) ;
 scalar_t__ xs_exists (int ,int ,char*) ;

__attribute__((used)) static void
xenbusb_verify_device(device_t dev, device_t child)
{
 if (xs_exists(XST_NIL, xenbus_get_node(child), "") == 0) {





  xenbusb_delete_child(dev, child);
 }
}
