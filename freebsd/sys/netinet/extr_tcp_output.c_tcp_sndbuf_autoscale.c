
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcpcb {int snd_wnd; scalar_t__ snd_nxt; scalar_t__ snd_una; } ;
struct TYPE_3__ {int sb_flags; int sb_lowat; int sb_hiwat; } ;
struct socket {TYPE_1__ so_snd; } ;


 int SB_AUTOSIZE ;
 scalar_t__ V_tcp_autosndbuf_inc ;
 scalar_t__ V_tcp_autosndbuf_max ;
 scalar_t__ V_tcp_do_autosndbuf ;
 scalar_t__ V_tcp_sendbuf_auto_lowat ;
 int curthread ;
 int min (scalar_t__,scalar_t__) ;
 int sbreserve_locked (TYPE_1__*,int ,struct socket*,int ) ;
 scalar_t__ sbused (TYPE_1__*) ;

void
tcp_sndbuf_autoscale(struct tcpcb *tp, struct socket *so, uint32_t sendwin)
{
 if (V_tcp_do_autosndbuf && so->so_snd.sb_flags & SB_AUTOSIZE) {
  int lowat;

  lowat = V_tcp_sendbuf_auto_lowat ? so->so_snd.sb_lowat : 0;
  if ((tp->snd_wnd / 4 * 5) >= so->so_snd.sb_hiwat - lowat &&
      sbused(&so->so_snd) >=
      (so->so_snd.sb_hiwat / 8 * 7) - lowat &&
      sbused(&so->so_snd) < V_tcp_autosndbuf_max &&
      sendwin >= (sbused(&so->so_snd) -
      (tp->snd_nxt - tp->snd_una))) {
   if (!sbreserve_locked(&so->so_snd,
       min(so->so_snd.sb_hiwat + V_tcp_autosndbuf_inc,
        V_tcp_autosndbuf_max), so, curthread))
    so->so_snd.sb_flags &= ~SB_AUTOSIZE;
  }
 }
}
