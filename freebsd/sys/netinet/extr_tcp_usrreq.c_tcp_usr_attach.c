
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct tcpcb {int dummy; } ;
struct socket {int so_options; scalar_t__ so_linger; } ;
struct inpcb {int dummy; } ;


 int KASSERT (int ,char*) ;
 int PRU_ATTACH ;
 int SO_LINGER ;
 int TCPDEBUG0 ;
 int TCPDEBUG1 () ;
 int TCPDEBUG2 (int ) ;
 scalar_t__ TCP_LINGERTIME ;
 int TCP_PROBE2 (int ,struct tcpcb*,int ) ;
 int debug__user ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int tcp_attach (struct socket*) ;

__attribute__((used)) static int
tcp_usr_attach(struct socket *so, int proto, struct thread *td)
{
 struct inpcb *inp;
 struct tcpcb *tp = ((void*)0);
 int error;
 TCPDEBUG0;

 inp = sotoinpcb(so);
 KASSERT(inp == ((void*)0), ("tcp_usr_attach: inp != NULL"));
 TCPDEBUG1();

 error = tcp_attach(so);
 if (error)
  goto out;

 if ((so->so_options & SO_LINGER) && so->so_linger == 0)
  so->so_linger = TCP_LINGERTIME;

 inp = sotoinpcb(so);
 tp = intotcpcb(inp);
out:
 TCPDEBUG2(PRU_ATTACH);
 TCP_PROBE2(debug__user, tp, PRU_ATTACH);
 return error;
}
