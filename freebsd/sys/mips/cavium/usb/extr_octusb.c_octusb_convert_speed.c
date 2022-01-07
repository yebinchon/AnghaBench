
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usb_dev_speed { ____Placeholder_usb_dev_speed } usb_dev_speed ;
typedef int cvmx_usb_speed_t ;


 int CVMX_USB_SPEED_FULL ;
 int CVMX_USB_SPEED_HIGH ;
 int CVMX_USB_SPEED_LOW ;



__attribute__((used)) static cvmx_usb_speed_t
octusb_convert_speed(enum usb_dev_speed speed)
{
 ;
 switch (speed) {
 case 128:
  return (CVMX_USB_SPEED_HIGH);
 case 129:
  return (CVMX_USB_SPEED_FULL);
 default:
  return (CVMX_USB_SPEED_LOW);
 }
}
