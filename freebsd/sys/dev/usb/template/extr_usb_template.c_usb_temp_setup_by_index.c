
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint16_t ;
struct usb_device {int dummy; } ;


 int USB_ERR_INVAL ;
 int usb_temp_setup (struct usb_device*,int *) ;
 int usb_template_audio ;
 int usb_template_cdce ;
 int usb_template_cdceem ;
 int usb_template_kbd ;
 int usb_template_midi ;
 int usb_template_modem ;
 int usb_template_mouse ;
 int usb_template_msc ;
 int usb_template_mtp ;
 int usb_template_multi ;
 int usb_template_phone ;
 int usb_template_serialnet ;

__attribute__((used)) static usb_error_t
usb_temp_setup_by_index(struct usb_device *udev, uint16_t index)
{
 usb_error_t err;

 switch (index) {
 case 132:
  err = usb_temp_setup(udev, &usb_template_msc);
  break;
 case 138:
  err = usb_temp_setup(udev, &usb_template_cdce);
  break;
 case 131:
  err = usb_temp_setup(udev, &usb_template_mtp);
  break;
 case 134:
  err = usb_temp_setup(udev, &usb_template_modem);
  break;
 case 139:
  err = usb_temp_setup(udev, &usb_template_audio);
  break;
 case 136:
  err = usb_temp_setup(udev, &usb_template_kbd);
  break;
 case 133:
  err = usb_temp_setup(udev, &usb_template_mouse);
  break;
 case 129:
  err = usb_temp_setup(udev, &usb_template_phone);
  break;
 case 128:
  err = usb_temp_setup(udev, &usb_template_serialnet);
  break;
 case 135:
  err = usb_temp_setup(udev, &usb_template_midi);
  break;
 case 130:
  err = usb_temp_setup(udev, &usb_template_multi);
  break;
 case 137:
  err = usb_temp_setup(udev, &usb_template_cdceem);
  break;
 default:
  return (USB_ERR_INVAL);
 }

 return (err);
}
