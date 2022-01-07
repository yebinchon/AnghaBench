
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int red_bw; int rc_bbr_cur_del_rate; int rc_delrate; } ;
struct tcp_bbr {TYPE_1__ r_ctl; } ;


 int get_filter_value (int *) ;
 int tcp_bbr_tso_size_check (struct tcp_bbr*,int ) ;

__attribute__((used)) static void
bbr_setup_red_bw(struct tcp_bbr *bbr, uint32_t cts)
{
 bbr->r_ctl.red_bw = get_filter_value(&bbr->r_ctl.rc_delrate);

 if (bbr->r_ctl.red_bw > bbr->r_ctl.rc_bbr_cur_del_rate)
  bbr->r_ctl.red_bw = bbr->r_ctl.rc_bbr_cur_del_rate;
 if (bbr->r_ctl.red_bw < (get_filter_value(&bbr->r_ctl.rc_delrate) / 2))
  bbr->r_ctl.red_bw = get_filter_value(&bbr->r_ctl.rc_delrate) / 2;
 tcp_bbr_tso_size_check(bbr, cts);
}
