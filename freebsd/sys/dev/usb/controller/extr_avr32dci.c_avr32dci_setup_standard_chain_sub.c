
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avr32dci_td {int alt_next; int short_pkt; int did_stall; scalar_t__ error; int remainder; int offset; int pc; int func; struct avr32dci_td* obj_next; } ;
struct avr32dci_std_temp {int setup_alt_next; int short_pkt; int did_stall; int len; int offset; int pc; int func; struct avr32dci_td* td_next; struct avr32dci_td* td; } ;



__attribute__((used)) static void
avr32dci_setup_standard_chain_sub(struct avr32dci_std_temp *temp)
{
 struct avr32dci_td *td;


 td = temp->td_next;
 temp->td = td;


 temp->td_next = td->obj_next;


 td->func = temp->func;
 td->pc = temp->pc;
 td->offset = temp->offset;
 td->remainder = temp->len;
 td->error = 0;
 td->did_stall = temp->did_stall;
 td->short_pkt = temp->short_pkt;
 td->alt_next = temp->setup_alt_next;
}
