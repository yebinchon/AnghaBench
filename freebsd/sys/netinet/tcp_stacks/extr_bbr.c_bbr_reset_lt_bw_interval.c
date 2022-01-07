
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rc_lost; int rc_lt_lost; int rc_delivered; int rc_lt_del; int rc_del_time; int rc_lt_time; int rc_pkt_epoch; int rc_lt_epoch; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;



__attribute__((used)) static inline void
bbr_reset_lt_bw_interval(struct tcp_bbr *bbr, uint32_t cts)
{
 bbr->r_ctl.rc_lt_epoch = bbr->r_ctl.rc_pkt_epoch;
 bbr->r_ctl.rc_lt_time = bbr->r_ctl.rc_del_time;
 bbr->r_ctl.rc_lt_del = bbr->r_ctl.rc_delivered;
 bbr->r_ctl.rc_lt_lost = bbr->r_ctl.rc_lost;
}
