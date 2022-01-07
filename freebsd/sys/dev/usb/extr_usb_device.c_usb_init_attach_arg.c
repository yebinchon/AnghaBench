
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdDevice; int idProduct; int idVendor; } ;
struct TYPE_4__ {int usb_mode; } ;
struct usb_device {int curr_config_no; int curr_config_index; TYPE_2__ ddesc; int port_no; TYPE_1__ flags; } ;
struct TYPE_6__ {int bConfigNum; int bConfigIndex; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; void* bcdDevice; void* idProduct; void* idVendor; } ;
struct usb_attach_arg {TYPE_3__ info; int dev_state; int port; int usb_mode; struct usb_device* device; } ;


 int UAA_DEV_READY ;
 void* UGETW (int ) ;
 int memset (struct usb_attach_arg*,int ,int) ;

__attribute__((used)) static void
usb_init_attach_arg(struct usb_device *udev,
    struct usb_attach_arg *uaa)
{
 memset(uaa, 0, sizeof(*uaa));

 uaa->device = udev;
 uaa->usb_mode = udev->flags.usb_mode;
 uaa->port = udev->port_no;
 uaa->dev_state = UAA_DEV_READY;

 uaa->info.idVendor = UGETW(udev->ddesc.idVendor);
 uaa->info.idProduct = UGETW(udev->ddesc.idProduct);
 uaa->info.bcdDevice = UGETW(udev->ddesc.bcdDevice);
 uaa->info.bDeviceClass = udev->ddesc.bDeviceClass;
 uaa->info.bDeviceSubClass = udev->ddesc.bDeviceSubClass;
 uaa->info.bDeviceProtocol = udev->ddesc.bDeviceProtocol;
 uaa->info.bConfigIndex = udev->curr_config_index;
 uaa->info.bConfigNum = udev->curr_config_no;
}
