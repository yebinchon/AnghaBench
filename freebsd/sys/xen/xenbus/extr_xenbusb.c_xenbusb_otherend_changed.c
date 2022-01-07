
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
typedef int device_t ;


 int XENBUS_OTHEREND_CHANGED (int ,int) ;

void
xenbusb_otherend_changed(device_t bus, device_t child, enum xenbus_state state)
{
 XENBUS_OTHEREND_CHANGED(child, state);
}
