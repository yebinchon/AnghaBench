
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ sg_state; scalar_t__ sg_lastcreatetime; scalar_t__ sg_threadcount; scalar_t__ sg_maxthreads; int sg_idlethreads; int sg_lock; } ;
struct TYPE_9__ {int st_cond; TYPE_1__* st_xprt; } ;
struct TYPE_8__ {TYPE_2__* xp_thread; TYPE_3__* xp_group; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCTHREAD ;
typedef TYPE_3__ SVCGROUP ;


 int FALSE ;
 TYPE_2__* LIST_FIRST (int *) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int MA_OWNED ;
 scalar_t__ SVCPOOL_ACTIVE ;
 scalar_t__ SVCPOOL_THREADWANTED ;
 int SVC_ACQUIRE (TYPE_1__*) ;
 int TRUE ;
 int cv_signal (int *) ;
 int mtx_assert (int *,int ) ;
 int st_ilink ;
 scalar_t__ time_uptime ;

__attribute__((used)) static int
xprt_assignthread(SVCXPRT *xprt)
{
 SVCGROUP *grp = xprt->xp_group;
 SVCTHREAD *st;

 mtx_assert(&grp->sg_lock, MA_OWNED);
 st = LIST_FIRST(&grp->sg_idlethreads);
 if (st) {
  LIST_REMOVE(st, st_ilink);
  SVC_ACQUIRE(xprt);
  xprt->xp_thread = st;
  st->st_xprt = xprt;
  cv_signal(&st->st_cond);
  return (TRUE);
 } else {
  if (grp->sg_state == SVCPOOL_ACTIVE
      && grp->sg_lastcreatetime < time_uptime
      && grp->sg_threadcount < grp->sg_maxthreads) {
   grp->sg_state = SVCPOOL_THREADWANTED;
  }
 }
 return (FALSE);
}
