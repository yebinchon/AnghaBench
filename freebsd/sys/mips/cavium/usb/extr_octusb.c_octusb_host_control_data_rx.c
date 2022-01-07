
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct octusb_td {scalar_t__ remainder; TYPE_1__* qh; int offset; int pc; scalar_t__ error_any; } ;
struct TYPE_2__ {scalar_t__ fixup_actlen; scalar_t__ fixup_off; scalar_t__ fixup_buf; } ;


 scalar_t__ octusb_host_alloc_endpoint (struct octusb_td*) ;
 int usbd_copy_in (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint8_t
octusb_host_control_data_rx(struct octusb_td *td)
{
 uint32_t rem;


 if (octusb_host_alloc_endpoint(td))
  return (1);


 if (td->error_any)
  return (0);


 rem = td->qh->fixup_actlen - td->qh->fixup_off;

 if (rem > td->remainder)
  rem = td->remainder;

 usbd_copy_in(td->pc, td->offset, td->qh->fixup_buf +
     td->qh->fixup_off + 8, rem);

 td->offset += rem;
 td->remainder -= rem;
 td->qh->fixup_off += rem;

 return (0);
}
