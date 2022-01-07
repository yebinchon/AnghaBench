
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; int so_timeo; int so_snd; int so_rcv; } ;


 int SOCKBUF_LOCK (int *) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SOLISTENING (struct socket*) ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTED ;
 int SS_ISDISCONNECTING ;
 int sbdrop_locked (int *,int ) ;
 int sbused (int *) ;
 int socantrcvmore_locked (struct socket*) ;
 int socantsendmore_locked (struct socket*) ;
 int wakeup (int *) ;

void
soisdisconnected(struct socket *so)
{

 SOCK_LOCK(so);
 so->so_state &= ~(SS_ISCONNECTING|SS_ISCONNECTED|SS_ISDISCONNECTING);
 so->so_state |= SS_ISDISCONNECTED;

 if (!SOLISTENING(so)) {
  SOCK_UNLOCK(so);
  SOCKBUF_LOCK(&so->so_rcv);
  socantrcvmore_locked(so);
  SOCKBUF_LOCK(&so->so_snd);
  sbdrop_locked(&so->so_snd, sbused(&so->so_snd));
  socantsendmore_locked(so);
 } else
  SOCK_UNLOCK(so);
 wakeup(&so->so_timeo);
}
