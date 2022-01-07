
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcpcb {int t_maxseg; } ;
struct tcp_bbr {int rc_init_win; } ;


 scalar_t__ V_tcp_do_rfc3390 ;
 int V_tcp_initcwnd_segments ;
 int max (int,int) ;
 int min (int,int ) ;

__attribute__((used)) static uint32_t
bbr_initial_cwnd(struct tcp_bbr *bbr, struct tcpcb *tp)
{
 uint32_t i_cwnd;

 if (bbr->rc_init_win) {
  i_cwnd = bbr->rc_init_win * tp->t_maxseg;
 } else if (V_tcp_initcwnd_segments)
  i_cwnd = min((V_tcp_initcwnd_segments * tp->t_maxseg),
      max(2 * tp->t_maxseg, 14600));
 else if (V_tcp_do_rfc3390)
  i_cwnd = min(4 * tp->t_maxseg,
      max(2 * tp->t_maxseg, 4380));
 else {

  if (tp->t_maxseg > 2190)
   i_cwnd = 2 * tp->t_maxseg;
  else if (tp->t_maxseg > 1095)
   i_cwnd = 3 * tp->t_maxseg;
  else
   i_cwnd = 4 * tp->t_maxseg;
 }
 return (i_cwnd);
}
