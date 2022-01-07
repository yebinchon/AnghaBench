
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct usb_temp_setup {int size; int bConfigurationValue; int usb_speed; int err; scalar_t__ buf; } ;
struct usb_temp_device_desc {int idVendor; int idProduct; int bcdDevice; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int iSerialNumber; int iProduct; int iManufacturer; struct usb_temp_config_desc** ppConfigDesc; } ;
struct TYPE_4__ {int bLength; int bNumConfigurations; int bMaxPacketSize; int bcdUSB; int iSerialNumber; int iProduct; int iManufacturer; int bcdDevice; int idProduct; int idVendor; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bDescriptorType; } ;
struct TYPE_3__ {int bLength; scalar_t__ bMaxPacketSize0; int bcdUSB; scalar_t__ bNumConfigurations; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bDescriptorType; } ;
struct usb_temp_data {TYPE_2__ udd; TYPE_1__ udq; struct usb_temp_device_desc const* tdd; } ;
struct usb_temp_config_desc {int dummy; } ;


 int UDESC_DEVICE ;
 int UDESC_DEVICE_QUALIFIER ;
 struct usb_temp_data* USB_ADD_BYTES (scalar_t__,int) ;
 int USB_ERR_INVAL ;





 int USETW (int ,int) ;
 int usb_make_config_desc (struct usb_temp_setup*,struct usb_temp_config_desc const*) ;

__attribute__((used)) static void
usb_make_device_desc(struct usb_temp_setup *temp,
    const struct usb_temp_device_desc *tdd)
{
 struct usb_temp_data *utd;
 const struct usb_temp_config_desc **tcd;
 uint16_t old_size;



 old_size = temp->size;
 temp->size += sizeof(*utd);



 temp->bConfigurationValue = 1;
 tcd = tdd->ppConfigDesc;
 if (tcd) {
  while (*tcd) {
   usb_make_config_desc(temp, *tcd);
   temp->bConfigurationValue++;
   tcd++;
  }
 }





 if (temp->buf) {
  utd = USB_ADD_BYTES(temp->buf, old_size);


  utd->tdd = tdd;


  utd->udd.bLength = sizeof(utd->udd);
  utd->udd.bDescriptorType = UDESC_DEVICE;
  utd->udd.bDeviceClass = tdd->bDeviceClass;
  utd->udd.bDeviceSubClass = tdd->bDeviceSubClass;
  utd->udd.bDeviceProtocol = tdd->bDeviceProtocol;
  USETW(utd->udd.idVendor, tdd->idVendor);
  USETW(utd->udd.idProduct, tdd->idProduct);
  USETW(utd->udd.bcdDevice, tdd->bcdDevice);
  utd->udd.iManufacturer = tdd->iManufacturer;
  utd->udd.iProduct = tdd->iProduct;
  utd->udd.iSerialNumber = tdd->iSerialNumber;
  utd->udd.bNumConfigurations = temp->bConfigurationValue - 1;
  utd->udq.bLength = sizeof(utd->udq);
  utd->udq.bDescriptorType = UDESC_DEVICE_QUALIFIER;
  utd->udq.bDeviceClass = tdd->bDeviceClass;
  utd->udq.bDeviceSubClass = tdd->bDeviceSubClass;
  utd->udq.bDeviceProtocol = tdd->bDeviceProtocol;
  utd->udq.bNumConfigurations = 0;
  USETW(utd->udq.bcdUSB, 0x0200);
  utd->udq.bMaxPacketSize0 = 0;

  switch (temp->usb_speed) {
  case 130:
   USETW(utd->udd.bcdUSB, 0x0110);
   utd->udd.bMaxPacketSize = 8;
   break;
  case 132:
   USETW(utd->udd.bcdUSB, 0x0110);
   utd->udd.bMaxPacketSize = 32;
   break;
  case 131:
   USETW(utd->udd.bcdUSB, 0x0200);
   utd->udd.bMaxPacketSize = 64;
   break;
  case 128:
   USETW(utd->udd.bcdUSB, 0x0250);
   utd->udd.bMaxPacketSize = 255;
   break;
  case 129:
   USETW(utd->udd.bcdUSB, 0x0300);
   utd->udd.bMaxPacketSize = 9;
   break;
  default:
   temp->err = USB_ERR_INVAL;
   break;
  }
 }
}
