
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octusb_td {int alt_next; int short_pkt; scalar_t__ error_stall; scalar_t__ error_any; int remainder; int offset; int pc; int func; struct octusb_td* obj_next; } ;
struct octusb_std_temp {int setup_alt_next; int short_pkt; int len; int offset; int pc; int func; struct octusb_td* td_next; struct octusb_td* td; } ;



__attribute__((used)) static void
octusb_setup_standard_chain_sub(struct octusb_std_temp *temp)
{
 struct octusb_td *td;


 td = temp->td_next;
 temp->td = td;


 temp->td_next = td->obj_next;


 td->func = temp->func;
 td->pc = temp->pc;
 td->offset = temp->offset;
 td->remainder = temp->len;
 td->error_any = 0;
 td->error_stall = 0;
 td->short_pkt = temp->short_pkt;
 td->alt_next = temp->setup_alt_next;
}
