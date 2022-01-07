
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_dev_state { ____Placeholder_usb_dev_state } usb_dev_state ;


 int USB_STATE_MAX ;
 char const** statestr ;

const char *
usb_statestr(enum usb_dev_state state)
{
 return ((state < USB_STATE_MAX) ? statestr[state] : "UNKNOWN");
}
