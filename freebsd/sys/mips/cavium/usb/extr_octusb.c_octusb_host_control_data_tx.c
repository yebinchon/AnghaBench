
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct octusb_td {int error_any; scalar_t__ remainder; TYPE_1__* qh; int offset; int pc; } ;
struct TYPE_2__ {scalar_t__ fixup_len; scalar_t__ fixup_off; scalar_t__ fixup_buf; } ;


 int DPRINTFN (int,char*) ;
 scalar_t__ octusb_host_alloc_endpoint (struct octusb_td*) ;
 int usbd_copy_out (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint8_t
octusb_host_control_data_tx(struct octusb_td *td)
{
 uint32_t rem;


 if (octusb_host_alloc_endpoint(td))
  return (1);


 if (td->error_any)
  return (0);

 rem = td->qh->fixup_len - td->qh->fixup_off;

 if (td->remainder > rem) {
  td->error_any = 1;
  DPRINTFN(1, "Excess setup transmit data\n");
  return (0);
 }
 usbd_copy_out(td->pc, td->offset, td->qh->fixup_buf +
     td->qh->fixup_off + 8, td->remainder);

 td->offset += td->remainder;
 td->qh->fixup_off += td->remainder;
 td->remainder = 0;

 return (0);
}
