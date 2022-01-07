
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ rc_rcv_epoch_start; } ;
struct tcp_bbr {int rc_is_pkt_epoch_now; TYPE_1__ r_ctl; } ;
typedef int int32_t ;


 int BBR_RTT_PROP ;
 scalar_t__ bbr_get_rtt (struct tcp_bbr*,int ) ;
 int bbr_set_epoch (struct tcp_bbr*,scalar_t__,int) ;
 int bbr_state_change (struct tcp_bbr*,scalar_t__,int,int ,scalar_t__) ;

__attribute__((used)) static void
bbr_check_bbr_for_state(struct tcp_bbr *bbr, uint32_t cts, int32_t line, uint32_t losses)
{
 int32_t epoch = 0;

 if ((cts - bbr->r_ctl.rc_rcv_epoch_start) >= bbr_get_rtt(bbr, BBR_RTT_PROP)) {
  bbr_set_epoch(bbr, cts, line);

  epoch = 1;
 }
 bbr_state_change(bbr, cts, epoch, bbr->rc_is_pkt_epoch_now, losses);
}
