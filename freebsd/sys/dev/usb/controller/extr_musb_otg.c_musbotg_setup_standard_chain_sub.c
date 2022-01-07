
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musbotg_td {int transfer_type; int hport; int haddr; int dev_addr; int channel; int alt_next; int short_pkt; int did_stall; scalar_t__ transaction_started; scalar_t__ error; int remainder; int offset; int pc; int func; struct musbotg_td* obj_next; } ;
struct musbotg_std_temp {int transfer_type; int hport; int haddr; int dev_addr; int channel; int setup_alt_next; int short_pkt; int did_stall; int len; int offset; int pc; int func; struct musbotg_td* td_next; struct musbotg_td* td; } ;



__attribute__((used)) static void
musbotg_setup_standard_chain_sub(struct musbotg_std_temp *temp)
{
 struct musbotg_td *td;


 td = temp->td_next;
 temp->td = td;


 temp->td_next = td->obj_next;


 td->func = temp->func;
 td->pc = temp->pc;
 td->offset = temp->offset;
 td->remainder = temp->len;
 td->error = 0;
 td->transaction_started = 0;
 td->did_stall = temp->did_stall;
 td->short_pkt = temp->short_pkt;
 td->alt_next = temp->setup_alt_next;
 td->channel = temp->channel;
 td->dev_addr = temp->dev_addr;
 td->haddr = temp->haddr;
 td->hport = temp->hport;
 td->transfer_type = temp->transfer_type;
}
