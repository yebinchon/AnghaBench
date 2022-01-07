
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int self_powered; } ;
struct usb_device {int address; int curr_config_no; int depth; int speed; int power; int langid; TYPE_1__ flags; int bus; } ;


 int printf (char*,struct usb_device*,...) ;

void
usb_dump_device(struct usb_device *udev)
{
 printf("usb_dump_device: dev=%p\n", udev);
 if (udev == ((void*)0)) {
  return;
 }
 printf(" bus=%p \n"
     " address=%d config=%d depth=%d speed=%d self_powered=%d\n"
     " power=%d langid=%d\n",
     udev->bus,
     udev->address, udev->curr_config_no, udev->depth, udev->speed,
     udev->flags.self_powered, udev->power, udev->langid);
}
