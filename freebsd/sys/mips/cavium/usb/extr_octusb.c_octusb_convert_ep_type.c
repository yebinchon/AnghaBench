
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int cvmx_usb_transfer_t ;


 int CVMX_USB_TRANSFER_BULK ;
 int CVMX_USB_TRANSFER_CONTROL ;
 int CVMX_USB_TRANSFER_INTERRUPT ;
 int CVMX_USB_TRANSFER_ISOCHRONOUS ;




 int UE_XFERTYPE ;

__attribute__((used)) static cvmx_usb_transfer_t
octusb_convert_ep_type(uint8_t ep_type)
{
 ;
 switch (ep_type & UE_XFERTYPE) {
 case 130:
  return (CVMX_USB_TRANSFER_CONTROL);
 case 129:
  return (CVMX_USB_TRANSFER_INTERRUPT);
 case 128:
  return (CVMX_USB_TRANSFER_ISOCHRONOUS);
 case 131:
  return (CVMX_USB_TRANSFER_BULK);
 default:
  return (0);
 }
}
