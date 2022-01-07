
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int rc_pace_max_segs; } ;
struct tcp_bbr {TYPE_2__ r_ctl; scalar_t__ rc_last_options; TYPE_1__* rc_tp; scalar_t__ rc_use_google; } ;
struct TYPE_3__ {scalar_t__ t_maxseg; } ;


 int bbr_get_bw (struct tcp_bbr*) ;
 int bbr_get_raw_target_cwnd (struct tcp_bbr*,int ,scalar_t__) ;
 scalar_t__ bbr_get_target_cwnd (struct tcp_bbr*,int ,scalar_t__) ;
 scalar_t__ get_min_cwnd (struct tcp_bbr*) ;
 scalar_t__ min (scalar_t__,int ) ;
 scalar_t__ roundup (int ,scalar_t__) ;

__attribute__((used)) static uint32_t
bbr_get_a_state_target(struct tcp_bbr *bbr, uint32_t gain)
{
 uint32_t mss, tar;

 if (bbr->rc_use_google) {

  tar = bbr_get_target_cwnd(bbr, bbr_get_bw(bbr), gain);
 } else {
  mss = min((bbr->rc_tp->t_maxseg - bbr->rc_last_options),
     bbr->r_ctl.rc_pace_max_segs);

  tar = roundup(bbr_get_raw_target_cwnd(bbr, bbr_get_bw(bbr),
            gain), mss);

  if (tar < get_min_cwnd(bbr))
   return (get_min_cwnd(bbr));
 }
 return (tar);
}
