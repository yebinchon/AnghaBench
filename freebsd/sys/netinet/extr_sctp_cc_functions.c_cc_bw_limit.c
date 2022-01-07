
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {int my_vtag; } ;
struct sctp_tcb {int rport; TYPE_2__* sctp_ep; TYPE_1__ asoc; } ;
struct TYPE_7__ {int bw_bytes; int bw_bytes_at_last_rttc; int last_inst_ind; int lbw_rtt; int lbw; scalar_t__ rtt_set_this_sack; } ;
struct TYPE_8__ {TYPE_3__ rtcc; } ;
struct sctp_nets {int rtt; TYPE_4__ cc_mod; int flight_size; scalar_t__ cwnd; } ;
struct TYPE_6__ {scalar_t__ sctp_lport; } ;


 int SCTP_BASE_SYSCTL (int ) ;
 int SCTP_INST_GAINING ;
 int SCTP_INST_LOOSING ;
 int SCTP_INST_NEUTRAL ;
 int SDT_PROBE5 (int ,int ,struct sctp_nets*,int ,int,int,int,int ,int) ;
 int cc_bw_decrease (struct sctp_tcb*,struct sctp_nets*,int,int,int,int) ;
 int cc_bw_increase (struct sctp_tcb*,struct sctp_nets*,int,int) ;
 int cc_bw_same (struct sctp_tcb*,struct sctp_nets*,int,int,int,int) ;
 int cwnd ;
 int rttvar ;
 int sctp ;
 int sctp_rttvar_bw ;
 int sctp_rttvar_rtt ;

__attribute__((used)) static int
cc_bw_limit(struct sctp_tcb *stcb, struct sctp_nets *net, uint64_t nbw)
{
 uint64_t bw_offset, rtt_offset;
 uint64_t probepoint, rtt, vtag;
 uint64_t bytes_for_this_rtt, inst_bw;
 uint64_t div, inst_off;
 int bw_shift;
 uint8_t inst_ind;
 int ret;
 bw_shift = SCTP_BASE_SYSCTL(sctp_rttvar_bw);
 rtt = stcb->asoc.my_vtag;
 vtag = (rtt << 32) | (((uint32_t)(stcb->sctp_ep->sctp_lport)) << 16) | (stcb->rport);
 probepoint = (((uint64_t)net->cwnd) << 32);
 rtt = net->rtt;
 if (net->cc_mod.rtcc.rtt_set_this_sack) {
  net->cc_mod.rtcc.rtt_set_this_sack = 0;
  bytes_for_this_rtt = net->cc_mod.rtcc.bw_bytes - net->cc_mod.rtcc.bw_bytes_at_last_rttc;
  net->cc_mod.rtcc.bw_bytes_at_last_rttc = net->cc_mod.rtcc.bw_bytes;
  if (net->rtt) {
   div = net->rtt / 1000;
   if (div) {
    inst_bw = bytes_for_this_rtt / div;
    inst_off = inst_bw >> bw_shift;
    if (inst_bw > nbw)
     inst_ind = SCTP_INST_GAINING;
    else if ((inst_bw + inst_off) < nbw)
     inst_ind = SCTP_INST_LOOSING;
    else
     inst_ind = SCTP_INST_NEUTRAL;
    probepoint |= ((0xb << 16) | inst_ind);
   } else {
    inst_ind = net->cc_mod.rtcc.last_inst_ind;
    inst_bw = bytes_for_this_rtt / (uint64_t)(net->rtt);

    probepoint |= ((0xc << 16) | inst_ind);
   }
  } else {
   inst_ind = net->cc_mod.rtcc.last_inst_ind;
   inst_bw = bytes_for_this_rtt;

   probepoint |= ((0xd << 16) | inst_ind);
  }
  SDT_PROBE5(sctp, cwnd, net, rttvar,
      vtag,
      ((nbw << 32) | inst_bw),
      ((net->cc_mod.rtcc.lbw_rtt << 32) | rtt),
      net->flight_size,
      probepoint);
 } else {

  inst_ind = net->cc_mod.rtcc.last_inst_ind;
 }
 bw_offset = net->cc_mod.rtcc.lbw >> bw_shift;
 if (nbw > net->cc_mod.rtcc.lbw + bw_offset) {
  ret = cc_bw_increase(stcb, net, nbw, vtag);
  goto out;
 }
 rtt_offset = net->cc_mod.rtcc.lbw_rtt >> SCTP_BASE_SYSCTL(sctp_rttvar_rtt);
 if (nbw < net->cc_mod.rtcc.lbw - bw_offset) {
  ret = cc_bw_decrease(stcb, net, nbw, rtt_offset, vtag, inst_ind);
  goto out;
 }




 ret = cc_bw_same(stcb, net, nbw, rtt_offset, vtag, inst_ind);
out:
 net->cc_mod.rtcc.last_inst_ind = inst_ind;
 return (ret);
}
