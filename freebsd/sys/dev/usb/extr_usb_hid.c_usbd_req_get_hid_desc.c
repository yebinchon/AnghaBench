
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct usb_interface {int * idesc; } ;
struct usb_hid_descriptor {TYPE_1__* descrs; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;
struct malloc_type {int dummy; } ;
struct TYPE_2__ {int wDescriptorLength; } ;


 int M_WAITOK ;
 int M_ZERO ;
 int UGETW (int ) ;
 scalar_t__ USB_ERR_INVAL ;
 scalar_t__ USB_ERR_IOERROR ;
 scalar_t__ USB_ERR_NOMEM ;
 scalar_t__ USB_ERR_NORMAL_COMPLETION ;
 int free (void*,struct malloc_type*) ;
 struct usb_hid_descriptor* hid_get_descriptor_from_usb (int ,int *) ;
 void* malloc (int ,struct malloc_type*,int) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int usbd_get_config_descriptor (struct usb_device*) ;
 struct usb_interface* usbd_get_iface (struct usb_device*,int ) ;
 scalar_t__ usbd_req_get_report_descriptor (struct usb_device*,struct mtx*,void*,int ,int ) ;

usb_error_t
usbd_req_get_hid_desc(struct usb_device *udev, struct mtx *mtx,
    void **descp, uint16_t *sizep,
    struct malloc_type *mem, uint8_t iface_index)
{
 struct usb_interface *iface = usbd_get_iface(udev, iface_index);
 struct usb_hid_descriptor *hid;
 usb_error_t err;

 if ((iface == ((void*)0)) || (iface->idesc == ((void*)0))) {
  return (USB_ERR_INVAL);
 }
 hid = hid_get_descriptor_from_usb
     (usbd_get_config_descriptor(udev), iface->idesc);

 if (hid == ((void*)0)) {
  return (USB_ERR_IOERROR);
 }
 *sizep = UGETW(hid->descrs[0].wDescriptorLength);
 if (*sizep == 0) {
  return (USB_ERR_IOERROR);
 }
 if (mtx)
  mtx_unlock(mtx);

 *descp = malloc(*sizep, mem, M_ZERO | M_WAITOK);

 if (mtx)
  mtx_lock(mtx);

 if (*descp == ((void*)0)) {
  return (USB_ERR_NOMEM);
 }
 err = usbd_req_get_report_descriptor
     (udev, mtx, *descp, *sizep, iface_index);

 if (err) {
  free(*descp, mem);
  *descp = ((void*)0);
  return (err);
 }
 return (USB_ERR_NORMAL_COMPLETION);
}
