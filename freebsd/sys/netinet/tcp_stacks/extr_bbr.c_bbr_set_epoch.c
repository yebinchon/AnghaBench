
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ rc_rcv_epoch_start; int rc_rtt_epoch; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;
typedef int int32_t ;


 int bbr_log_time_epoch (struct tcp_bbr*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static inline void
bbr_set_epoch(struct tcp_bbr *bbr, uint32_t cts, int32_t line)
{
 uint32_t epoch_time;


 bbr->r_ctl.rc_rtt_epoch++;
 epoch_time = cts - bbr->r_ctl.rc_rcv_epoch_start;
 bbr_log_time_epoch(bbr, cts, line, epoch_time);
 bbr->r_ctl.rc_rcv_epoch_start = cts;
}
