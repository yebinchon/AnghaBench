
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; } ;
struct usb_interface {int dummy; } ;


 scalar_t__ UICLASS_MASS ;
 scalar_t__ UMASS_PROTO_ATAPI ;
 scalar_t__ UMASS_PROTO_BBB ;
 scalar_t__ UMASS_PROTO_CBI ;
 scalar_t__ UMASS_PROTO_CBI_I ;
 scalar_t__ UMASS_PROTO_RBC ;
 scalar_t__ UMASS_PROTO_SCSI ;
 scalar_t__ UMASS_PROTO_UFI ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (struct usb_interface*) ;

__attribute__((used)) static uint16_t
umass_get_proto(struct usb_interface *iface)
{
 struct usb_interface_descriptor *id;
 uint16_t retval;

 retval = 0;


 id = usbd_get_interface_descriptor(iface);
 if ((id == ((void*)0)) ||
     (id->bInterfaceClass != UICLASS_MASS)) {
  goto done;
 }
 switch (id->bInterfaceSubClass) {
 case 131:
  retval |= UMASS_PROTO_SCSI;
  break;
 case 128:
  retval |= UMASS_PROTO_UFI;
  break;
 case 132:
  retval |= UMASS_PROTO_RBC;
  break;
 case 130:
 case 129:
  retval |= UMASS_PROTO_ATAPI;
  break;
 default:
  goto done;
 }

 switch (id->bInterfaceProtocol) {
 case 134:
  retval |= UMASS_PROTO_CBI;
  break;
 case 133:
  retval |= UMASS_PROTO_CBI_I;
  break;
 case 135:
 case 136:
  retval |= UMASS_PROTO_BBB;
  break;
 default:
  goto done;
 }
done:
 return (retval);
}
