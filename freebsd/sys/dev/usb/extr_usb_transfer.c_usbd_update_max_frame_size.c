
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer {int max_frame_size; int max_packet_size; int max_packet_count; } ;



__attribute__((used)) static void
usbd_update_max_frame_size(struct usb_xfer *xfer)
{




 xfer->max_frame_size = xfer->max_packet_size * xfer->max_packet_count;
}
