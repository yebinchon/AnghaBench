
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union tcp_log_stackspecific {int dummy; } tcp_log_stackspecific ;
typedef int uint32_t ;
struct tcp_log_bbr {int pkt_epoch; int pkts_out; int use_lt_bw; int ininput; int inhpts; int cwnd_gain; int pacing_gain; int lt_epoch; int epoch; int bbr_substate; int bbr_state; int lost; int timeStamp; int delivered; int applimited; int inflight; int bw_inuse; int rttProp; int delRate; int cur_del_rate; } ;
struct TYPE_4__ {int rc_pkt_epoch; int rc_flight_at_input; int rc_bbr_cwnd_gain; int rc_bbr_hptsi_gain; int rc_lt_epoch; int rc_rtt_epoch; int rc_lost; int rc_delivered; int r_app_limited_until; scalar_t__ rc_lost_bytes; scalar_t__ rc_sacked; int rc_rttprop; int rc_delrate; int rc_bbr_cur_del_rate; } ;
struct tcp_bbr {TYPE_2__ r_ctl; int rc_lt_use_bw; TYPE_1__* rc_inp; int rc_bbr_state; int rc_tp; } ;
struct TYPE_3__ {int inp_in_input; int inp_in_hpts; } ;


 int bbr_get_bw (struct tcp_bbr*) ;
 int bbr_state_val (struct tcp_bbr*) ;
 int ctf_flight_size (int ,scalar_t__) ;
 int get_filter_value (int *) ;
 int get_filter_value_small (int *) ;
 int memset (struct tcp_log_bbr*,int ,int) ;

__attribute__((used)) static __inline void
bbr_fill_in_logging_data(struct tcp_bbr *bbr, struct tcp_log_bbr *l, uint32_t cts)
{
 memset(l, 0, sizeof(union tcp_log_stackspecific));
 l->cur_del_rate = bbr->r_ctl.rc_bbr_cur_del_rate;
 l->delRate = get_filter_value(&bbr->r_ctl.rc_delrate);
 l->rttProp = get_filter_value_small(&bbr->r_ctl.rc_rttprop);
 l->bw_inuse = bbr_get_bw(bbr);
 l->inflight = ctf_flight_size(bbr->rc_tp,
     (bbr->r_ctl.rc_sacked + bbr->r_ctl.rc_lost_bytes));
 l->applimited = bbr->r_ctl.r_app_limited_until;
 l->delivered = bbr->r_ctl.rc_delivered;
 l->timeStamp = cts;
 l->lost = bbr->r_ctl.rc_lost;
 l->bbr_state = bbr->rc_bbr_state;
 l->bbr_substate = bbr_state_val(bbr);
 l->epoch = bbr->r_ctl.rc_rtt_epoch;
 l->lt_epoch = bbr->r_ctl.rc_lt_epoch;
 l->pacing_gain = bbr->r_ctl.rc_bbr_hptsi_gain;
 l->cwnd_gain = bbr->r_ctl.rc_bbr_cwnd_gain;
 l->inhpts = bbr->rc_inp->inp_in_hpts;
 l->ininput = bbr->rc_inp->inp_in_input;
 l->use_lt_bw = bbr->rc_lt_use_bw;
 l->pkts_out = bbr->r_ctl.rc_flight_at_input;
 l->pkt_epoch = bbr->r_ctl.rc_pkt_epoch;
}
