
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {struct usb_device* parent_hub; TYPE_1__* bus; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {int parent; } ;


 int KASSERT (int,char*) ;
 int MAX_UDEV_NEST ;
 int find_udev_in_children (int,struct usb_device*) ;
 int nitems (struct usb_device**) ;
 int ofw_bus_get_node (int ) ;

phandle_t
usb_fdt_get_node(device_t dev, struct usb_device *udev)
{
 struct usb_device *ud;
 struct usb_device *udev_stack[MAX_UDEV_NEST];
 phandle_t controller_node, node;
 int idx;






 if ((controller_node = ofw_bus_get_node(udev->bus->parent)) == -1)
  return (-1);







 for (ud = udev, idx = 0; ud->parent_hub != ((void*)0); ud = ud->parent_hub) {
  KASSERT(idx < nitems(udev_stack), ("Too many hubs"));
  udev_stack[idx++] = ud;
 }
 for (node = controller_node;;) {
  node = find_udev_in_children(node, udev_stack[--idx]);
  if (idx == 0 || node == -1)
   break;
 }
 return (node);
}
