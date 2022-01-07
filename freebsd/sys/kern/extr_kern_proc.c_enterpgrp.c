
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {scalar_t__ s_sid; int s_login; int * s_ttyp; int * s_ttydp; int * s_ttyvp; int s_count; struct proc* s_leader; int s_mtx; } ;
struct proc {scalar_t__ p_pid; struct session* p_session; int p_flag; } ;
struct pgrp {int pg_sigiolst; scalar_t__ pg_jobc; int pg_members; scalar_t__ pg_id; struct session* pg_session; int pg_mtx; } ;
typedef scalar_t__ pid_t ;


 int KASSERT (int,char*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int ,struct pgrp*,int ) ;
 int MTX_DEF ;
 int MTX_DUPOK ;
 int PGRPHASH (scalar_t__) ;
 int PGRP_LOCK (struct pgrp*) ;
 int PGRP_UNLOCK (struct pgrp*) ;
 int PROC_ID_GROUP ;
 int PROC_ID_SESSION ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_CONTROLT ;
 int SESS_LEADER (struct proc*) ;
 int SLIST_INIT (int *) ;
 int SX_XLOCKED ;
 int bcopy (int ,int ,int) ;
 struct proc* curproc ;
 int doenterpgrp (struct proc*,struct pgrp*) ;
 int mtx_init (int *,char*,int *,int) ;
 int pg_hash ;
 int * pgfind (scalar_t__) ;
 int proc_id_set (int ,scalar_t__) ;
 int proctree_lock ;
 int refcount_init (int *,int) ;
 int sess_hold (struct session*) ;
 int sx_assert (int *,int ) ;

int
enterpgrp(struct proc *p, pid_t pgid, struct pgrp *pgrp, struct session *sess)
{

 sx_assert(&proctree_lock, SX_XLOCKED);

 KASSERT(pgrp != ((void*)0), ("enterpgrp: pgrp == NULL"));
 KASSERT(p->p_pid == pgid,
     ("enterpgrp: new pgrp and pid != pgid"));
 KASSERT(pgfind(pgid) == ((void*)0),
     ("enterpgrp: pgrp with pgid exists"));
 KASSERT(!SESS_LEADER(p),
     ("enterpgrp: session leader attempted setpgrp"));

 mtx_init(&pgrp->pg_mtx, "process group", ((void*)0), MTX_DEF | MTX_DUPOK);

 if (sess != ((void*)0)) {



  mtx_init(&sess->s_mtx, "session", ((void*)0), MTX_DEF);
  PROC_LOCK(p);
  p->p_flag &= ~P_CONTROLT;
  PROC_UNLOCK(p);
  PGRP_LOCK(pgrp);
  sess->s_leader = p;
  sess->s_sid = p->p_pid;
  proc_id_set(PROC_ID_SESSION, p->p_pid);
  refcount_init(&sess->s_count, 1);
  sess->s_ttyvp = ((void*)0);
  sess->s_ttydp = ((void*)0);
  sess->s_ttyp = ((void*)0);
  bcopy(p->p_session->s_login, sess->s_login,
       sizeof(sess->s_login));
  pgrp->pg_session = sess;
  KASSERT(p == curproc,
      ("enterpgrp: mksession and p != curproc"));
 } else {
  pgrp->pg_session = p->p_session;
  sess_hold(pgrp->pg_session);
  PGRP_LOCK(pgrp);
 }
 pgrp->pg_id = pgid;
 proc_id_set(PROC_ID_GROUP, p->p_pid);
 LIST_INIT(&pgrp->pg_members);





 LIST_INSERT_HEAD(PGRPHASH(pgid), pgrp, pg_hash);
 pgrp->pg_jobc = 0;
 SLIST_INIT(&pgrp->pg_sigiolst);
 PGRP_UNLOCK(pgrp);

 doenterpgrp(p, pgrp);

 return (0);
}
