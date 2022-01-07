
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_temp_setup {scalar_t__ size; size_t usb_speed; int bNumEndpoints; scalar_t__ buf; void* err; } ;
struct usb_temp_endpoint_desc {int bEndpointAddress; int bmAttributes; void** ppRawDesc; TYPE_2__* pIntervals; TYPE_1__* pPacketSize; } ;
struct usb_endpoint_descriptor {int bLength; int bEndpointAddress; int bmAttributes; int bInterval; int wMaxPacketSize; int bDescriptorType; } ;
struct TYPE_4__ {int* bInterval; } ;
struct TYPE_3__ {scalar_t__* mps; } ;


 int UDESC_ENDPOINT ;
 int UE_ADDR ;


 int UE_DIR_IN ;
 int UE_DIR_OUT ;

 int UE_ISOCHRONOUS ;
 int UE_XFERTYPE ;
 scalar_t__ UE_ZERO_MPS ;
 struct usb_endpoint_descriptor* USB_ADD_BYTES (scalar_t__,scalar_t__) ;
 void* USB_ERR_INVAL ;


 int USETW (int ,scalar_t__) ;
 int usb_make_raw_desc (struct usb_temp_setup*,void const*) ;

__attribute__((used)) static void
usb_make_endpoint_desc(struct usb_temp_setup *temp,
    const struct usb_temp_endpoint_desc *ted)
{
 struct usb_endpoint_descriptor *ed;
 const void **rd;
 uint16_t old_size;
 uint16_t mps;
 uint8_t ea;
 uint8_t et;


 old_size = temp->size;

 ea = (ted->bEndpointAddress & (UE_ADDR | UE_DIR_IN | UE_DIR_OUT));
 et = (ted->bmAttributes & UE_XFERTYPE);

 if (et == UE_ISOCHRONOUS) {

  temp->size += sizeof(*ed) + 2;
 } else {
  temp->size += sizeof(*ed);
 }


 rd = ted->ppRawDesc;
 if (rd) {
  while (*rd) {
   usb_make_raw_desc(temp, *rd);
   rd++;
  }
 }
 if (ted->pPacketSize == ((void*)0)) {

  temp->err = USB_ERR_INVAL;
  return;
 }
 mps = ted->pPacketSize->mps[temp->usb_speed];
 if (mps == 0) {

  temp->err = USB_ERR_INVAL;
  return;
 } else if (mps == UE_ZERO_MPS) {

  mps = 0;
 }





 if (temp->buf) {
  ed = USB_ADD_BYTES(temp->buf, old_size);
  if (et == UE_ISOCHRONOUS)
   ed->bLength = sizeof(*ed) + 2;
  else
   ed->bLength = sizeof(*ed);
  ed->bDescriptorType = UDESC_ENDPOINT;
  ed->bEndpointAddress = ea;
  ed->bmAttributes = ted->bmAttributes;
  USETW(ed->wMaxPacketSize, mps);



  if (ted->pIntervals &&
      ted->pIntervals->bInterval[temp->usb_speed]) {
   ed->bInterval =
       ted->pIntervals->bInterval[temp->usb_speed];
  } else {
   switch (et) {
   case 132:
   case 131:
    ed->bInterval = 0;
    break;
   case 130:
    switch (temp->usb_speed) {
    case 128:
    case 129:
     ed->bInterval = 1;
     break;
    default:
     ed->bInterval = 4;
     break;
    }
    break;
   default:
    switch (temp->usb_speed) {
    case 128:
    case 129:
     ed->bInterval = 1;
     break;
    default:
     ed->bInterval = 1;
     break;
    }
    break;
   }
  }
 }
 temp->bNumEndpoints++;
}
