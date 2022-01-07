
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_state; } ;
struct tcp_rack {int r_state; int r_substate; } ;
 int rack_do_close_wait ;
 int rack_do_closing ;
 int rack_do_established ;
 int rack_do_fin_wait_1 ;
 int rack_do_fin_wait_2 ;
 int rack_do_lastack ;
 int rack_do_syn_recv ;
 int rack_do_syn_sent ;
 int rack_set_pace_segments (struct tcpcb*,struct tcp_rack*) ;

__attribute__((used)) static void
rack_set_state(struct tcpcb *tp, struct tcp_rack *rack)
{
 switch (tp->t_state) {
 case 129:
  rack->r_state = 129;
  rack->r_substate = rack_do_syn_sent;
  break;
 case 130:
  rack->r_state = 130;
  rack->r_substate = rack_do_syn_recv;
  break;
 case 135:
  rack_set_pace_segments(tp, rack);
  rack->r_state = 135;
  rack->r_substate = rack_do_established;
  break;
 case 137:
  rack->r_state = 137;
  rack->r_substate = rack_do_close_wait;
  break;
 case 134:
  rack->r_state = 134;
  rack->r_substate = rack_do_fin_wait_1;
  break;
 case 136:
  rack->r_state = 136;
  rack->r_substate = rack_do_closing;
  break;
 case 132:
  rack->r_state = 132;
  rack->r_substate = rack_do_lastack;
  break;
 case 133:
  rack->r_state = 133;
  rack->r_substate = rack_do_fin_wait_2;
  break;
 case 131:
 case 138:
 case 128:
 default:
  break;
 };
}
