
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {int re_enumerate_wait; int next_config_index; int port_no; int * parent_hub; TYPE_1__ flags; } ;


 int DPRINTF (char*,int ) ;
 int DPRINTFN (int,char*) ;
 int UHF_PORT_ENABLE ;
 int USB_IFACE_INDEX_ANY ;
 scalar_t__ USB_MODE_HOST ;
 void* USB_RE_ENUM_DONE ;



 int USB_UNCONFIG_INDEX ;
 int usb_probe_and_attach (struct usb_device*,int ) ;
 scalar_t__ usbd_enum_lock (struct usb_device*) ;
 int usbd_enum_unlock (struct usb_device*) ;
 int usbd_errstr (int ) ;
 int usbd_req_clear_port_feature (int *,int *,int ,int ) ;
 int usbd_req_re_enumerate (struct usb_device*,int *) ;
 int usbd_set_config_index (struct usb_device*,int ) ;

void
uhub_explore_handle_re_enumerate(struct usb_device *child)
{
 uint8_t do_unlock;
 usb_error_t err;


 if (child->flags.usb_mode != USB_MODE_HOST)
  return;

 do_unlock = usbd_enum_lock(child);
 switch (child->re_enumerate_wait) {
 case 128:
  err = usbd_set_config_index(child,
      USB_UNCONFIG_INDEX);
  if (err != 0) {
   DPRINTF("Unconfigure failed: %s: Ignored.\n",
       usbd_errstr(err));
  }
  if (child->parent_hub == ((void*)0)) {

   DPRINTFN(6, "cannot reset root HUB\n");
   err = 0;
  } else {
   err = usbd_req_re_enumerate(child, ((void*)0));
  }
  if (err == 0)
   err = usbd_set_config_index(child, 0);
  if (err == 0) {
   err = usb_probe_and_attach(child,
       USB_IFACE_INDEX_ANY);
  }
  child->re_enumerate_wait = USB_RE_ENUM_DONE;
  break;

 case 130:

  err = usbd_set_config_index(child,
      USB_UNCONFIG_INDEX);
  if (err) {
   DPRINTFN(0, "Could not unconfigure "
       "device (ignored)\n");
  }
  if (child->parent_hub == ((void*)0)) {

   DPRINTFN(6, "cannot set port feature\n");
   err = 0;
  } else {

   err = usbd_req_clear_port_feature(child->parent_hub,
       ((void*)0), child->port_no, UHF_PORT_ENABLE);
   if (err) {
    DPRINTFN(0, "Could not disable port "
        "(ignored)\n");
   }
  }
  child->re_enumerate_wait = USB_RE_ENUM_DONE;
  break;

 case 129:
  err = usbd_set_config_index(child,
      child->next_config_index);
  if (err != 0) {
   DPRINTF("Configure failed: %s: Ignored.\n",
       usbd_errstr(err));
  } else {
   err = usb_probe_and_attach(child,
       USB_IFACE_INDEX_ANY);
  }
  child->re_enumerate_wait = USB_RE_ENUM_DONE;
  break;

 default:
  child->re_enumerate_wait = USB_RE_ENUM_DONE;
  break;
 }
 if (do_unlock)
  usbd_enum_unlock(child);
}
