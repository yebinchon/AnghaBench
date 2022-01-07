
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {TYPE_1__* t_fb; } ;
struct socket {int so_snd; } ;
struct mbuf {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct TYPE_2__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 int ECONNRESET ;
 int INP_DROPPED ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int mb_free_notready (struct mbuf*,int) ;
 int sbready (int *,struct mbuf*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct tcpcb*) ;

__attribute__((used)) static int
tcp_usr_ready(struct socket *so, struct mbuf *m, int count)
{
 struct inpcb *inp;
 struct tcpcb *tp;
 int error;

 inp = sotoinpcb(so);
 INP_WLOCK(inp);
 if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
  INP_WUNLOCK(inp);
  mb_free_notready(m, count);
  return (ECONNRESET);
 }
 tp = intotcpcb(inp);

 SOCKBUF_LOCK(&so->so_snd);
 error = sbready(&so->so_snd, m, count);
 SOCKBUF_UNLOCK(&so->so_snd);
 if (error == 0)
  error = tp->t_fb->tfb_tcp_output(tp);
 INP_WUNLOCK(inp);

 return (error);
}
