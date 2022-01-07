
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int idProduct; int idVendor; } ;
struct usb_device {scalar_t__ port_index; TYPE_1__ ddesc; } ;
typedef int ssize_t ;
typedef int port ;
typedef scalar_t__ phandle_t ;
typedef int compat ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int UGETW (int ) ;
 int ofw_bus_node_is_compatible (scalar_t__,char*) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static phandle_t
find_udev_in_children(phandle_t parent, struct usb_device *udev)
{
 phandle_t child;
 ssize_t proplen;
 uint32_t port;
 char compat[16];
 snprintf(compat, sizeof(compat), "usb%x,%x",
     UGETW(udev->ddesc.idVendor), UGETW(udev->ddesc.idProduct));
 for (child = OF_child(parent); child != 0; child = OF_peer(child)) {
  if (!ofw_bus_node_is_compatible(child, compat))
   continue;
  proplen = OF_getencprop(child, "reg", &port, sizeof(port));
  if (proplen != sizeof(port))
   continue;
  if (port == (udev->port_index + 1))
   return (child);
 }
 return (-1);
}
