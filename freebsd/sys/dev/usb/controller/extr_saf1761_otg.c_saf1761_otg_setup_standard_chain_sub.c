
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saf1761_otg_td {int channel; int alt_next; int short_pkt; int did_stall; scalar_t__ set_toggle; scalar_t__ error_stall; scalar_t__ error_any; int remainder; int offset; int pc; int func; struct saf1761_otg_td* obj_next; } ;
struct saf1761_otg_std_temp {int setup_alt_next; int short_pkt; int did_stall; int len; int offset; int pc; int func; struct saf1761_otg_td* td_next; struct saf1761_otg_td* td; } ;


 int SOTG_HOST_CHANNEL_MAX ;

__attribute__((used)) static void
saf1761_otg_setup_standard_chain_sub(struct saf1761_otg_std_temp *temp)
{
 struct saf1761_otg_td *td;


 td = temp->td_next;
 temp->td = td;


 temp->td_next = td->obj_next;


 td->func = temp->func;
 td->pc = temp->pc;
 td->offset = temp->offset;
 td->remainder = temp->len;
 td->error_any = 0;
 td->error_stall = 0;
 td->set_toggle = 0;
 td->did_stall = temp->did_stall;
 td->short_pkt = temp->short_pkt;
 td->alt_next = temp->setup_alt_next;
 td->channel = SOTG_HOST_CHANNEL_MAX;
}
