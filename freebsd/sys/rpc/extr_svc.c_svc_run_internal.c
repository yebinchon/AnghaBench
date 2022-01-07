
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct svc_req {long rq_size; TYPE_2__* rq_thread; } ;
struct proc {int p_flag; } ;
typedef enum xprt_stat { ____Placeholder_xprt_stat } xprt_stat ;
typedef scalar_t__ bool_t ;
struct TYPE_28__ {scalar_t__ sg_state; scalar_t__ sg_lastidlecheck; scalar_t__ sg_threadcount; scalar_t__ sg_maxthreads; scalar_t__ sg_minthreads; int sg_lock; int sg_active; int sg_idlethreads; scalar_t__ sg_lastcreatetime; TYPE_3__* sg_pool; } ;
struct TYPE_27__ {TYPE_2__* (* sp_assign ) (TYPE_2__*,struct svc_req*) ;} ;
struct TYPE_26__ {int st_cond; int st_lock; int st_reqs; TYPE_1__* st_xprt; TYPE_3__* st_pool; } ;
struct TYPE_25__ {scalar_t__ xp_active; TYPE_2__* xp_thread; scalar_t__ xp_lastactive; } ;
typedef TYPE_1__ SVCXPRT ;
typedef TYPE_2__ SVCTHREAD ;
typedef TYPE_3__ SVCPOOL ;
typedef TYPE_4__ SVCGROUP ;


 int EINTR ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int MTX_DEF ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ P_SHOULDSTOP (struct proc*) ;
 int P_TOTAL_STOP ;
 int STAILQ_EMPTY (int *) ;
 struct svc_req* STAILQ_FIRST (int *) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct svc_req*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 scalar_t__ SVCPOOL_ACTIVE ;
 scalar_t__ SVCPOOL_CLOSING ;
 scalar_t__ SVCPOOL_THREADSTARTING ;
 scalar_t__ SVCPOOL_THREADWANTED ;
 int SVC_ACQUIRE (TYPE_1__*) ;
 int SVC_RELEASE (TYPE_1__*) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int XPRT_MOREREQS ;
 struct proc* curproc ;
 int cv_destroy (int *) ;
 int cv_init (int *,char*) ;
 int cv_timedwait_sig (int *,int *,int) ;
 int cv_wait_sig (int *,int *) ;
 int hz ;
 TYPE_2__* mem_alloc (int) ;
 int mem_free (TYPE_2__*,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rq_link ;
 int st_ilink ;
 TYPE_2__* stub1 (TYPE_2__*,struct svc_req*) ;
 int svc_change_space_used (TYPE_3__*,long) ;
 int svc_checkidle (TYPE_4__*) ;
 int svc_executereq (struct svc_req*) ;
 int svc_exit (TYPE_3__*) ;
 int svc_getreq (TYPE_1__*,struct svc_req**) ;
 int svc_new_thread (TYPE_4__*) ;
 scalar_t__ svc_request_space_available (TYPE_3__*) ;
 int thread_suspend_check (int ) ;
 scalar_t__ time_uptime ;
 int wakeup (TYPE_4__*) ;
 int xp_alink ;
 int xprt_assignthread (TYPE_1__*) ;

__attribute__((used)) static void
svc_run_internal(SVCGROUP *grp, bool_t ismaster)
{
 SVCPOOL *pool = grp->sg_pool;
 SVCTHREAD *st, *stpref;
 SVCXPRT *xprt;
 enum xprt_stat stat;
 struct svc_req *rqstp;
 struct proc *p;
 long sz;
 int error;

 st = mem_alloc(sizeof(*st));
 mtx_init(&st->st_lock, "st_lock", ((void*)0), MTX_DEF);
 st->st_pool = pool;
 st->st_xprt = ((void*)0);
 STAILQ_INIT(&st->st_reqs);
 cv_init(&st->st_cond, "rpcsvc");

 mtx_lock(&grp->sg_lock);





 if (grp->sg_state == SVCPOOL_THREADSTARTING)
  grp->sg_state = SVCPOOL_ACTIVE;

 while (grp->sg_state != SVCPOOL_CLOSING) {



  if (grp->sg_state == SVCPOOL_THREADWANTED) {
   grp->sg_state = SVCPOOL_THREADSTARTING;
   grp->sg_lastcreatetime = time_uptime;
   mtx_unlock(&grp->sg_lock);
   svc_new_thread(grp);
   mtx_lock(&grp->sg_lock);
   continue;
  }




  if (time_uptime > grp->sg_lastidlecheck) {
   grp->sg_lastidlecheck = time_uptime;
   svc_checkidle(grp);
  }

  xprt = st->st_xprt;
  if (!xprt) {



   if (!ismaster && grp->sg_threadcount >
       grp->sg_maxthreads)
    break;






   if (svc_request_space_available(pool) &&
       (xprt = TAILQ_FIRST(&grp->sg_active)) != ((void*)0)) {
    TAILQ_REMOVE(&grp->sg_active, xprt, xp_alink);
    SVC_ACQUIRE(xprt);
    xprt->xp_thread = st;
    st->st_xprt = xprt;
    continue;
   }

   LIST_INSERT_HEAD(&grp->sg_idlethreads, st, st_ilink);
   if (ismaster || (!ismaster &&
       grp->sg_threadcount > grp->sg_minthreads))
    error = cv_timedwait_sig(&st->st_cond,
        &grp->sg_lock, 5 * hz);
   else
    error = cv_wait_sig(&st->st_cond,
        &grp->sg_lock);
   if (st->st_xprt == ((void*)0))
    LIST_REMOVE(st, st_ilink);




   if (error == EWOULDBLOCK) {
    if (!ismaster
        && (grp->sg_threadcount
     > grp->sg_minthreads)
     && !st->st_xprt)
     break;
   } else if (error != 0) {
    KASSERT(error == EINTR || error == ERESTART,
        ("non-signal error %d", error));
    mtx_unlock(&grp->sg_lock);
    p = curproc;
    PROC_LOCK(p);
    if (P_SHOULDSTOP(p) ||
        (p->p_flag & P_TOTAL_STOP) != 0) {
     thread_suspend_check(0);
     PROC_UNLOCK(p);
     mtx_lock(&grp->sg_lock);
    } else {
     PROC_UNLOCK(p);
     svc_exit(pool);
     mtx_lock(&grp->sg_lock);
     break;
    }
   }
   continue;
  }
  mtx_unlock(&grp->sg_lock);




  xprt->xp_lastactive = time_uptime;
  do {
   if (!svc_request_space_available(pool))
    break;
   rqstp = ((void*)0);
   stat = svc_getreq(xprt, &rqstp);
   if (rqstp) {
    svc_change_space_used(pool, rqstp->rq_size);




    if (pool->sp_assign) {
     stpref = pool->sp_assign(st, rqstp);
     rqstp->rq_thread = stpref;
     STAILQ_INSERT_TAIL(&stpref->st_reqs,
         rqstp, rq_link);
     mtx_unlock(&stpref->st_lock);
     if (stpref != st)
      rqstp = ((void*)0);
    } else {
     rqstp->rq_thread = st;
     STAILQ_INSERT_TAIL(&st->st_reqs,
         rqstp, rq_link);
    }
   }
  } while (rqstp == ((void*)0) && stat == XPRT_MOREREQS
      && grp->sg_state != SVCPOOL_CLOSING);







  mtx_lock(&grp->sg_lock);
  xprt->xp_thread = ((void*)0);
  st->st_xprt = ((void*)0);
  if (xprt->xp_active) {
   if (!svc_request_space_available(pool) ||
       !xprt_assignthread(xprt))
    TAILQ_INSERT_TAIL(&grp->sg_active,
        xprt, xp_alink);
  }
  mtx_unlock(&grp->sg_lock);
  SVC_RELEASE(xprt);




  mtx_lock(&st->st_lock);
  while ((rqstp = STAILQ_FIRST(&st->st_reqs)) != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&st->st_reqs, rq_link);
   mtx_unlock(&st->st_lock);
   sz = (long)rqstp->rq_size;
   svc_executereq(rqstp);
   svc_change_space_used(pool, -sz);
   mtx_lock(&st->st_lock);
  }
  mtx_unlock(&st->st_lock);
  mtx_lock(&grp->sg_lock);
 }

 if (st->st_xprt) {
  xprt = st->st_xprt;
  st->st_xprt = ((void*)0);
  SVC_RELEASE(xprt);
 }
 KASSERT(STAILQ_EMPTY(&st->st_reqs), ("stray reqs on exit"));
 mtx_destroy(&st->st_lock);
 cv_destroy(&st->st_cond);
 mem_free(st, sizeof(*st));

 grp->sg_threadcount--;
 if (!ismaster)
  wakeup(grp);
 mtx_unlock(&grp->sg_lock);
}
