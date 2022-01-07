
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_timeo; int so_snd; int so_rcv; int so_state; } ;


 int SOCKBUF_LOCK (int *) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SOLISTENING (struct socket*) ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;
 int socantrcvmore_locked (struct socket*) ;
 int socantsendmore_locked (struct socket*) ;
 int wakeup (int *) ;

void
soisdisconnecting(struct socket *so)
{

 SOCK_LOCK(so);
 so->so_state &= ~SS_ISCONNECTING;
 so->so_state |= SS_ISDISCONNECTING;

 if (!SOLISTENING(so)) {
  SOCKBUF_LOCK(&so->so_rcv);
  socantrcvmore_locked(so);
  SOCKBUF_LOCK(&so->so_snd);
  socantsendmore_locked(so);
 }
 SOCK_UNLOCK(so);
 wakeup(&so->so_timeo);
}
