
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {void* cur_rtt_send_time; void* ts_in; void* cur_rtt; } ;
struct tcp_bbr {int rtt_valid; TYPE_1__ r_ctl; } ;



__attribute__((used)) static void
tcp_bbr_xmit_timer(struct tcp_bbr *bbr, uint32_t rtt_usecs, uint32_t rsm_send_time, uint32_t r_start, uint32_t tsin)
{
 bbr->rtt_valid = 1;
 bbr->r_ctl.cur_rtt = rtt_usecs;
 bbr->r_ctl.ts_in = tsin;
 if (rsm_send_time)
  bbr->r_ctl.cur_rtt_send_time = rsm_send_time;
}
