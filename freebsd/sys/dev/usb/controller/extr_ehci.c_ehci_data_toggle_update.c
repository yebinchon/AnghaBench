
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct usb_xfer {int max_packet_size; TYPE_1__* endpoint; } ;
struct TYPE_2__ {int toggle_next; } ;



__attribute__((used)) static void
ehci_data_toggle_update(struct usb_xfer *xfer, uint16_t actlen, uint16_t xlen)
{
 uint16_t rem;
 uint8_t dt;


 dt = (actlen / xfer->max_packet_size) & 1;


 rem = actlen % xfer->max_packet_size;

 if (rem > 0)
  dt ^= 1;
 else if (actlen != xlen)
  dt ^= 1;
 else if (xlen == 0)
  dt ^= 1;

 xfer->endpoint->toggle_next ^= dt;
}
