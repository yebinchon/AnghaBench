
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int mac_inpcb_sosetlabel (struct socket*,struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

void
in_pcbsosetlabel(struct socket *so)
{
}
