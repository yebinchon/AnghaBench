
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int rc_pkt_epoch_rtt; int rc_last_rtt; scalar_t__ rc_ack_hdwr_delay; int rc_rttprop; } ;
struct tcp_bbr {TYPE_2__* rc_tp; TYPE_1__ r_ctl; scalar_t__ rc_ack_was_delayed; } ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ t_srtt; } ;


 int BBR_INITIAL_RTO ;
 scalar_t__ BBR_RTT_PKTRTT ;
 scalar_t__ BBR_RTT_PROP ;
 scalar_t__ BBR_RTT_RACK ;
 scalar_t__ BBR_SRTT ;
 int TCP_RTT_SHIFT ;
 int TICKS_2_USEC (scalar_t__) ;
 int bbr_delayed_ack_time ;
 int get_filter_value_small (int *) ;
 int panic (char*,scalar_t__) ;

__attribute__((used)) static __inline uint32_t
bbr_get_rtt(struct tcp_bbr *bbr, int32_t rtt_type)
{
 uint32_t f_rtt;
 uint32_t srtt;

 f_rtt = get_filter_value_small(&bbr->r_ctl.rc_rttprop);
 if (get_filter_value_small(&bbr->r_ctl.rc_rttprop) == 0xffffffff) {

  if (bbr->rc_tp->t_srtt == 0)
   f_rtt = BBR_INITIAL_RTO;
  else
   f_rtt = (TICKS_2_USEC(bbr->rc_tp->t_srtt) >> TCP_RTT_SHIFT);




  if (f_rtt < bbr_delayed_ack_time) {
   f_rtt = bbr_delayed_ack_time;
  }
 }

 if (rtt_type == BBR_RTT_PROP) {
  srtt = f_rtt;
 } else if (rtt_type == BBR_RTT_PKTRTT) {
  if (bbr->r_ctl.rc_pkt_epoch_rtt) {
   srtt = bbr->r_ctl.rc_pkt_epoch_rtt;
  } else {

   srtt = f_rtt;
  }
 } else if (rtt_type == BBR_RTT_RACK) {
  srtt = bbr->r_ctl.rc_last_rtt;

  if (bbr->rc_ack_was_delayed)
   srtt += bbr->r_ctl.rc_ack_hdwr_delay;
 } else if (rtt_type == BBR_SRTT) {
  srtt = (TICKS_2_USEC(bbr->rc_tp->t_srtt) >> TCP_RTT_SHIFT);
 } else {

  srtt = f_rtt;



 }
 return (srtt);
}
