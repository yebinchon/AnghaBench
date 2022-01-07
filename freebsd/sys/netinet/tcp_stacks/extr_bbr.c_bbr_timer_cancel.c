
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int rc_hpts_flags; scalar_t__ rc_last_delay_val; } ;
struct tcp_bbr {int rc_timer_first; scalar_t__ rc_pacer_started; int rc_tmr_stopped; TYPE_1__ r_ctl; TYPE_2__* rc_inp; } ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ inp_in_hpts; } ;


 int HPTS_REMOVE_OUTPUT ;
 int PACE_TMR_MASK ;
 scalar_t__ TSTMP_GT (scalar_t__,scalar_t__) ;
 int bbr_log_to_cancel (struct tcp_bbr*,int ,scalar_t__,int) ;
 int tcp_hpts_remove (TYPE_2__*,int ) ;

__attribute__((used)) static void
bbr_timer_cancel(struct tcp_bbr *bbr, int32_t line, uint32_t cts)
{
 if (bbr->r_ctl.rc_hpts_flags & PACE_TMR_MASK) {
  uint8_t hpts_removed = 0;

  if (bbr->rc_inp->inp_in_hpts &&
      (bbr->rc_timer_first == 1)) {





   hpts_removed = 1;
   tcp_hpts_remove(bbr->rc_inp, HPTS_REMOVE_OUTPUT);
   if (bbr->r_ctl.rc_last_delay_val) {

    uint32_t time_since_send;

    if (TSTMP_GT(cts, bbr->rc_pacer_started))
     time_since_send = cts - bbr->rc_pacer_started;
    else
     time_since_send = 0;
    if (bbr->r_ctl.rc_last_delay_val > time_since_send) {

     bbr->r_ctl.rc_last_delay_val -= time_since_send;
    } else {
     bbr->r_ctl.rc_last_delay_val = 0;
    }
    bbr->rc_pacer_started = cts;
   }
  }
  bbr->rc_timer_first = 0;
  bbr_log_to_cancel(bbr, line, cts, hpts_removed);
  bbr->rc_tmr_stopped = bbr->r_ctl.rc_hpts_flags & PACE_TMR_MASK;
  bbr->r_ctl.rc_hpts_flags &= ~(PACE_TMR_MASK);
 }
}
