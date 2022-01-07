
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int t_state; } ;
struct TYPE_3__ {int rc_init_rwnd; } ;
struct tcp_bbr {int r_state; int r_substate; TYPE_2__* rc_tp; TYPE_1__ r_ctl; } ;
struct TYPE_4__ {int snd_wnd; } ;
 int bbr_do_close_wait ;
 int bbr_do_closing ;
 int bbr_do_established ;
 int bbr_do_fin_wait_1 ;
 int bbr_do_fin_wait_2 ;
 int bbr_do_lastack ;
 int bbr_do_syn_recv ;
 int bbr_do_syn_sent ;
 int max (int ,int ) ;

__attribute__((used)) static void
bbr_set_state(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t win)
{
 switch (tp->t_state) {
 case 129:
  bbr->r_state = 129;
  bbr->r_substate = bbr_do_syn_sent;
  break;
 case 130:
  bbr->r_state = 130;
  bbr->r_substate = bbr_do_syn_recv;
  break;
 case 135:
  bbr->r_ctl.rc_init_rwnd = max(win, bbr->rc_tp->snd_wnd);
  bbr->r_state = 135;
  bbr->r_substate = bbr_do_established;
  break;
 case 137:
  bbr->r_state = 137;
  bbr->r_substate = bbr_do_close_wait;
  break;
 case 134:
  bbr->r_state = 134;
  bbr->r_substate = bbr_do_fin_wait_1;
  break;
 case 136:
  bbr->r_state = 136;
  bbr->r_substate = bbr_do_closing;
  break;
 case 132:
  bbr->r_state = 132;
  bbr->r_substate = bbr_do_lastack;
  break;
 case 133:
  bbr->r_state = 133;
  bbr->r_substate = bbr_do_fin_wait_2;
  break;
 case 131:
 case 138:
 case 128:
 default:
  break;
 };
}
