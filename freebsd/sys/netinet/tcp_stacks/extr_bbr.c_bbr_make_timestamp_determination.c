
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int cur_rtt_send_time; int bbr_ts_check_our_cts; int last_inbound_ts; int bbr_ts_check_tstmp; int bbr_peer_tsratio; } ;
struct tcp_bbr {int rc_ts_clock_set; int rc_ts_cant_be_used; TYPE_1__ r_ctl; } ;


 scalar_t__ bbr_delta_percent ;
 int bbr_log_tstmp_validation (struct tcp_bbr*,int,int) ;
 int bbr_min_peer_delta ;
 int bbr_min_usec_delta ;

__attribute__((used)) static void
bbr_make_timestamp_determination(struct tcp_bbr *bbr)
{
 uint64_t delta, peer_delta, delta_up;

 delta = bbr->r_ctl.cur_rtt_send_time - bbr->r_ctl.bbr_ts_check_our_cts;
 if (delta < bbr_min_usec_delta) {






  return;
 }
 peer_delta = bbr->r_ctl.last_inbound_ts - bbr->r_ctl.bbr_ts_check_tstmp;
 if (peer_delta < bbr_min_peer_delta) {
  return;
 }

 if (peer_delta > delta) {





  if (peer_delta < (delta + ((delta * (uint64_t)1000)/ (uint64_t)bbr_delta_percent))) {

   bbr->rc_ts_clock_set = 1;
   bbr->r_ctl.bbr_peer_tsratio = 1;
  } else {
   bbr->rc_ts_cant_be_used = 1;
   bbr->rc_ts_clock_set = 1;
  }
  return;
 }

 bbr->rc_ts_clock_set = 1;

 delta_up = (peer_delta * 1000) / (uint64_t)bbr_delta_percent;
 if ((peer_delta + delta_up) >= delta) {

  bbr->r_ctl.bbr_peer_tsratio = 1;
  bbr_log_tstmp_validation(bbr, peer_delta, delta);
  return;
 }

 delta_up = (peer_delta * 1000 * 10) / (uint64_t)bbr_delta_percent;
 if (((peer_delta * 10) + delta_up) >= delta) {
  bbr->r_ctl.bbr_peer_tsratio = 10;
  bbr_log_tstmp_validation(bbr, peer_delta, delta);
  return;
 }

 delta_up = (peer_delta * 1000 * 100) / (uint64_t)bbr_delta_percent;
 if (((peer_delta * 100) + delta_up) >= delta) {
  bbr->r_ctl.bbr_peer_tsratio = 100;
  bbr_log_tstmp_validation(bbr, peer_delta, delta);
  return;
 }

 delta_up = (peer_delta * 1000 * 1000) / (uint64_t)bbr_delta_percent;
 if (((peer_delta * 1000) + delta_up) >= delta) {
  bbr->r_ctl.bbr_peer_tsratio = 1000;
  bbr_log_tstmp_validation(bbr, peer_delta, delta);
  return;
 }

 delta_up = (peer_delta * 1000 * 10000) / (uint64_t)bbr_delta_percent;
 if (((peer_delta * 10000) + delta_up) >= delta) {
  bbr->r_ctl.bbr_peer_tsratio = 10000;
  return;
 }

 bbr->rc_ts_cant_be_used = 1;
 bbr->r_ctl.bbr_peer_tsratio = 0;
 bbr_log_tstmp_validation(bbr, peer_delta, delta);
}
