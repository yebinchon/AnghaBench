
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int rc_pace_max_segs; } ;
struct tcp_bbr {TYPE_2__ r_ctl; scalar_t__ rc_last_options; TYPE_1__* rc_tp; } ;
struct TYPE_3__ {scalar_t__ t_maxseg; } ;


 scalar_t__ BBR_HIGH_SPEED ;
 int BBR_RTT_PROP ;
 int bbr_cwnd_min_val ;
 int bbr_cwnd_min_val_hs ;
 scalar_t__ bbr_get_rtt (struct tcp_bbr*,int ) ;
 int min (scalar_t__,int ) ;

__attribute__((used)) static inline uint32_t
get_min_cwnd(struct tcp_bbr *bbr)
{
 int mss;

 mss = min((bbr->rc_tp->t_maxseg - bbr->rc_last_options), bbr->r_ctl.rc_pace_max_segs);
 if (bbr_get_rtt(bbr, BBR_RTT_PROP) < BBR_HIGH_SPEED)
  return (bbr_cwnd_min_val_hs * mss);
 else
  return (bbr_cwnd_min_val * mss);
}
