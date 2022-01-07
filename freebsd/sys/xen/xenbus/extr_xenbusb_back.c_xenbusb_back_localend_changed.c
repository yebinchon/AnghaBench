
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int XST_NIL ;
 scalar_t__ XenbusStateClosed ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ xenbus_dev_is_online (int ) ;
 int xenbus_get_node (int ) ;
 scalar_t__ xenbus_get_state (int ) ;
 int xenbusb_localend_changed (int ,int ,char const*) ;
 int xs_rm (int ,int ,char*) ;

__attribute__((used)) static void
xenbusb_back_localend_changed(device_t bus, device_t child, const char *path)
{

 xenbusb_localend_changed(bus, child, path);

 if (strcmp(path, "/state") != 0
  && strcmp(path, "/online") != 0)
  return;

 if (xenbus_get_state(child) != XenbusStateClosed
  || xenbus_dev_is_online(child) != 0)
  return;
 xs_rm(XST_NIL, xenbus_get_node(child), "hotplug-status");
}
