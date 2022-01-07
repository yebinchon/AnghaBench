
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_cdc_cm_descriptor {int bLength; int bmCapabilities; } ;
struct usb_cdc_acm_descriptor {int bLength; int bmCapabilities; } ;
struct usb_attach_arg {int dummy; } ;


 int DPRINTF (char*) ;
 int UDESCSUB_CDC_ACM ;
 int UDESCSUB_CDC_CM ;
 int UDESC_CS_INTERFACE ;
 int USB_CDC_CM_DOES_CM ;
 int USB_CDC_CM_OVER_DATA ;
 void* umodem_get_desc (struct usb_attach_arg*,int ,int ) ;

__attribute__((used)) static void
umodem_get_caps(struct usb_attach_arg *uaa, uint8_t *cm, uint8_t *acm)
{
 struct usb_cdc_cm_descriptor *cmd;
 struct usb_cdc_acm_descriptor *cad;

 cmd = umodem_get_desc(uaa, UDESC_CS_INTERFACE, UDESCSUB_CDC_CM);
 if ((cmd == ((void*)0)) || (cmd->bLength < sizeof(*cmd))) {
  DPRINTF("no CM desc (faking one)\n");
  *cm = USB_CDC_CM_DOES_CM | USB_CDC_CM_OVER_DATA;
 } else
  *cm = cmd->bmCapabilities;

 cad = umodem_get_desc(uaa, UDESC_CS_INTERFACE, UDESCSUB_CDC_ACM);
 if ((cad == ((void*)0)) || (cad->bLength < sizeof(*cad))) {
  DPRINTF("no ACM desc\n");
  *acm = 0;
 } else
  *acm = cad->bmCapabilities;
}
