
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_knowndev {char* vendorname; scalar_t__ vendor; scalar_t__ product; int flags; char* productname; } ;
struct usb_device_descriptor {int iProduct; int iManufacturer; int iSerialNumber; int idProduct; int idVendor; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct usb_device {int * product; int * manufacturer; struct usb_device_descriptor ddesc; void* serial; TYPE_1__ scratch; } ;


 int M_USB ;
 scalar_t__ UGETW (int ) ;
 int USB_KNOWNDEV_NOPROD ;
 int snprintf (char*,size_t,char*,scalar_t__) ;
 void* strdup (char*,int ) ;
 struct usb_knowndev* usb_knowndevs ;
 int usb_trim_spaces (char*) ;
 scalar_t__ usbd_ctrl_lock (struct usb_device*) ;
 int usbd_ctrl_unlock (struct usb_device*) ;
 int usbd_req_get_string_any (struct usb_device*,int *,char*,size_t,int ) ;

__attribute__((used)) static void
usbd_set_device_strings(struct usb_device *udev)
{
 struct usb_device_descriptor *udd = &udev->ddesc;



 char *temp_ptr;
 size_t temp_size;
 uint16_t vendor_id;
 uint16_t product_id;
 uint8_t do_unlock;


 do_unlock = usbd_ctrl_lock(udev);

 temp_ptr = (char *)udev->scratch.data;
 temp_size = sizeof(udev->scratch.data);

 vendor_id = UGETW(udd->idVendor);
 product_id = UGETW(udd->idProduct);


 usbd_req_get_string_any(udev, ((void*)0), temp_ptr, temp_size,
     udev->ddesc.iSerialNumber);
 udev->serial = strdup(temp_ptr, M_USB);


 usbd_req_get_string_any(udev, ((void*)0), temp_ptr, temp_size,
     udev->ddesc.iManufacturer);
 usb_trim_spaces(temp_ptr);
 if (temp_ptr[0] != '\0')
  udev->manufacturer = strdup(temp_ptr, M_USB);


 usbd_req_get_string_any(udev, ((void*)0), temp_ptr, temp_size,
     udev->ddesc.iProduct);
 usb_trim_spaces(temp_ptr);
 if (temp_ptr[0] != '\0')
  udev->product = strdup(temp_ptr, M_USB);
 if (udev->manufacturer == ((void*)0)) {
  snprintf(temp_ptr, temp_size, "vendor 0x%04x", vendor_id);
  udev->manufacturer = strdup(temp_ptr, M_USB);
 }
 if (udev->product == ((void*)0)) {
  snprintf(temp_ptr, temp_size, "product 0x%04x", product_id);
  udev->product = strdup(temp_ptr, M_USB);
 }

 if (do_unlock)
  usbd_ctrl_unlock(udev);
}
