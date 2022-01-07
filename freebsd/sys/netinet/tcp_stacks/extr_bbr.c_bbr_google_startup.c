
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int rc_bbr_lastbtlbw; scalar_t__ rc_bbr_last_startup_epoch; scalar_t__ rc_pkt_epoch; int rc_lost_at_startup; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ BBR_STARTUP_EPOCHS ;
 int bbr_get_full_bw (struct tcp_bbr*) ;
 int bbr_log_startup_event (struct tcp_bbr*,int ,scalar_t__,int ,scalar_t__,int) ;
 scalar_t__ bbr_start_exit ;

__attribute__((used)) static int32_t
bbr_google_startup(struct tcp_bbr *bbr, uint32_t cts, int32_t pkt_epoch)
{
 uint64_t btlbw, gain;
 if (pkt_epoch == 0) {



  return (0);
 }
 btlbw = bbr_get_full_bw(bbr);
 gain = ((bbr->r_ctl.rc_bbr_lastbtlbw *
   (uint64_t)bbr_start_exit) / (uint64_t)100) + bbr->r_ctl.rc_bbr_lastbtlbw;
 if (btlbw >= gain) {
  bbr->r_ctl.rc_bbr_last_startup_epoch = bbr->r_ctl.rc_pkt_epoch;
  bbr_log_startup_event(bbr, cts, bbr->r_ctl.rc_bbr_last_startup_epoch,
          bbr->r_ctl.rc_lost_at_startup, bbr_start_exit, 3);
  bbr->r_ctl.rc_bbr_lastbtlbw = btlbw;
 }
 if ((bbr->r_ctl.rc_pkt_epoch - bbr->r_ctl.rc_bbr_last_startup_epoch) >= BBR_STARTUP_EPOCHS)
  return (1);
 bbr_log_startup_event(bbr, cts, bbr->r_ctl.rc_bbr_last_startup_epoch,
         bbr->r_ctl.rc_lost_at_startup, bbr_start_exit, 8);
 return(0);
}
