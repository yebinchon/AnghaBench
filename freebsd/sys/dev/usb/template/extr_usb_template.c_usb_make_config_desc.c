
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct usb_temp_setup {int bInterfaceNumber; int bConfigurationValue; scalar_t__ size; scalar_t__ buf; scalar_t__ bAlternateSetting; } ;
struct usb_temp_interface_desc {int dummy; } ;
struct usb_temp_config_desc {int bmAttributes; int iConfiguration; struct usb_temp_interface_desc** ppIfaceDesc; } ;
struct usb_config_descriptor {int bLength; int bNumInterface; int bMaxPower; int bmAttributes; int iConfiguration; int bConfigurationValue; int wTotalLength; int bDescriptorType; } ;


 int UC_BUS_POWERED ;
 int UC_REMOTE_WAKEUP ;
 int UC_SELF_POWERED ;
 int UDESC_CONFIG ;
 struct usb_config_descriptor* USB_ADD_BYTES (scalar_t__,scalar_t__) ;
 int USETW (int ,scalar_t__) ;
 int usb_make_interface_desc (struct usb_temp_setup*,struct usb_temp_interface_desc const*) ;
 int usb_template_power ;

__attribute__((used)) static void
usb_make_config_desc(struct usb_temp_setup *temp,
    const struct usb_temp_config_desc *tcd)
{
 struct usb_config_descriptor *cd;
 const struct usb_temp_interface_desc **tid;
 uint16_t old_size;
 int power;



 old_size = temp->size;
 temp->size += sizeof(*cd);



 temp->bInterfaceNumber = 0xFF;
 temp->bAlternateSetting = 0;



 tid = tcd->ppIfaceDesc;
 if (tid) {
  while (*tid) {
   usb_make_interface_desc(temp, *tid);
   tid++;
  }
 }




 if (temp->buf) {
  cd = USB_ADD_BYTES(temp->buf, old_size);


  old_size = temp->size - old_size;

  cd->bLength = sizeof(*cd);
  cd->bDescriptorType = UDESC_CONFIG;
  USETW(cd->wTotalLength, old_size);
  cd->bNumInterface = temp->bInterfaceNumber + 1;
  cd->bConfigurationValue = temp->bConfigurationValue;
  cd->iConfiguration = tcd->iConfiguration;
  cd->bmAttributes = tcd->bmAttributes;

  power = usb_template_power;
  cd->bMaxPower = power / 2;
  cd->bmAttributes |= UC_REMOTE_WAKEUP;
  if (power > 0) {
   cd->bmAttributes |= UC_BUS_POWERED;
   cd->bmAttributes &= ~UC_SELF_POWERED;
  } else {
   cd->bmAttributes &= ~UC_BUS_POWERED;
   cd->bmAttributes |= UC_SELF_POWERED;
  }
 }
}
