
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc_otg_td {int tt_xactpos; scalar_t__ tt_scheduled; scalar_t__ errcnt; scalar_t__ state; void** channel; scalar_t__ did_nak; scalar_t__ got_short; scalar_t__ set_toggle; int alt_next; int short_pkt; int did_stall; scalar_t__ npkt; scalar_t__ error_stall; scalar_t__ error_any; scalar_t__ tx_bytes; int remainder; int offset; int pc; int func; struct dwc_otg_td* obj_next; } ;
struct dwc_otg_std_temp {int setup_alt_next; int short_pkt; int did_stall; int len; int offset; int pc; int func; struct dwc_otg_td* td_next; struct dwc_otg_td* td; } ;


 void* DWC_OTG_MAX_CHANNELS ;
 int HCSPLT_XACTPOS_BEGIN ;

__attribute__((used)) static void
dwc_otg_setup_standard_chain_sub(struct dwc_otg_std_temp *temp)
{
 struct dwc_otg_td *td;


 td = temp->td_next;
 temp->td = td;


 temp->td_next = td->obj_next;


 td->func = temp->func;
 td->pc = temp->pc;
 td->offset = temp->offset;
 td->remainder = temp->len;
 td->tx_bytes = 0;
 td->error_any = 0;
 td->error_stall = 0;
 td->npkt = 0;
 td->did_stall = temp->did_stall;
 td->short_pkt = temp->short_pkt;
 td->alt_next = temp->setup_alt_next;
 td->set_toggle = 0;
 td->got_short = 0;
 td->did_nak = 0;
 td->channel[0] = DWC_OTG_MAX_CHANNELS;
 td->channel[1] = DWC_OTG_MAX_CHANNELS;
 td->channel[2] = DWC_OTG_MAX_CHANNELS;
 td->state = 0;
 td->errcnt = 0;
 td->tt_scheduled = 0;
 td->tt_xactpos = HCSPLT_XACTPOS_BEGIN;
}
