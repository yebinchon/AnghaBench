
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
typedef int device_t ;


 scalar_t__ XenbusStateClosed ;
 int XenbusStateInitWait ;
 int XenbusStateInitialising ;
 scalar_t__ xenbus_dev_is_online (int ) ;
 scalar_t__ xenbus_get_state (int ) ;
 int xenbus_set_state (int ,int ) ;
 int xenbusb_otherend_changed (int ,int ,int) ;

__attribute__((used)) static void
xenbusb_back_otherend_changed(device_t bus, device_t child,
         enum xenbus_state peer_state)
{

 xenbusb_otherend_changed(bus, child, peer_state);
 if (peer_state == XenbusStateInitialising
  && xenbus_dev_is_online(child) != 0
  && xenbus_get_state(child) == XenbusStateClosed)
  xenbus_set_state(child, XenbusStateInitWait);
}
