
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_state; scalar_t__ so_type; int so_timeo; int so_vnet; int so_error; struct protosw* so_proto; } ;
struct protosw {TYPE_1__* pr_usrreqs; } ;
struct TYPE_2__ {int (* pru_shutdown ) (struct socket*) ;int (* pru_flush ) (struct socket*,int) ;} ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int ECONNABORTED ;
 int EINVAL ;
 int ENOTCONN ;
 int SHUT_RD ;
 int SHUT_RDWR ;
 int SHUT_WR ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOLISTENING (struct socket*) ;
 int SOLISTEN_LOCK (struct socket*) ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;
 int solisten_wakeup (struct socket*) ;
 int sorflush (struct socket*) ;
 int stub1 (struct socket*,int) ;
 int stub2 (struct socket*) ;
 int wakeup (int *) ;

int
soshutdown(struct socket *so, int how)
{
 struct protosw *pr = so->so_proto;
 int error, soerror_enotconn;

 if (!(how == SHUT_RD || how == SHUT_WR || how == SHUT_RDWR))
  return (EINVAL);

 soerror_enotconn = 0;
 if ((so->so_state &
     (SS_ISCONNECTED | SS_ISCONNECTING | SS_ISDISCONNECTING)) == 0) {
  if (so->so_type != SOCK_DGRAM && !SOLISTENING(so))
   return (ENOTCONN);
  soerror_enotconn = 1;
 }

 if (SOLISTENING(so)) {
  if (how != SHUT_WR) {
   SOLISTEN_LOCK(so);
   so->so_error = ECONNABORTED;
   solisten_wakeup(so);
  }
  goto done;
 }

 CURVNET_SET(so->so_vnet);
 if (pr->pr_usrreqs->pru_flush != ((void*)0))
  (*pr->pr_usrreqs->pru_flush)(so, how);
 if (how != SHUT_WR)
  sorflush(so);
 if (how != SHUT_RD) {
  error = (*pr->pr_usrreqs->pru_shutdown)(so);
  wakeup(&so->so_timeo);
  CURVNET_RESTORE();
  return ((error == 0 && soerror_enotconn) ? ENOTCONN : error);
 }
 wakeup(&so->so_timeo);
 CURVNET_RESTORE();

done:
 return (soerror_enotconn ? ENOTCONN : 0);
}
