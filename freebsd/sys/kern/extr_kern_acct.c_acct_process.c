
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct thread {struct proc* td_proc; } ;
struct rusage {int ru_ixrss; int ru_idrss; int ru_isrss; int ru_inblock; int ru_oublock; } ;
struct proc {int p_flag; struct plimit* p_limit; int p_acflag; TYPE_4__* p_ucred; TYPE_3__* p_stats; int p_comm; TYPE_2__* p_pgrp; } ;
struct plimit {int dummy; } ;
struct acctv3 {int ac_btime; int ac_version; int ac_len; int ac_len2; scalar_t__ ac_zero; int ac_flagx; int ac_gid; int ac_uid; void* ac_io; void* ac_mem; void* ac_etime; void* ac_stime; void* ac_utime; int ac_comm; int ac_tty; } ;
typedef int off_t ;
typedef int caddr_t ;
typedef int acct ;
struct TYPE_8__ {int cr_rgid; int cr_ruid; } ;
struct TYPE_7__ {struct timeval p_start; } ;
struct TYPE_6__ {TYPE_1__* pg_session; } ;
struct TYPE_5__ {scalar_t__ s_ttyp; } ;


 int ANVER ;
 int IO_APPEND ;
 int IO_UNIT ;
 int NOCRED ;
 int NODEV ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_CONTROLT ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int acct_cred ;
 int acct_limit ;
 scalar_t__ acct_suspended ;
 int acct_sx ;
 int * acct_vp ;
 int bcopy (int ,int ,int) ;
 void* encode_long (int) ;
 void* encode_timeval (struct timeval) ;
 int getboottime (struct timeval*) ;
 int hz ;
 int lim_free (struct plimit*) ;
 struct plimit* lim_hold (int ) ;
 int microuptime (struct timeval*) ;
 int proctree_lock ;
 int rufetchcalc (struct proc*,struct rusage*,struct timeval*,struct timeval*) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;
 int tick ;
 int timevaladd (struct timeval*,struct timeval*) ;
 int timevalsub (struct timeval*,struct timeval*) ;
 int tty_udev (scalar_t__) ;
 int vn_rdwr (int ,int *,int ,int,int ,int ,int,int ,int ,int *,struct thread*) ;

int
acct_process(struct thread *td)
{
 struct acctv3 acct;
 struct timeval ut, st, tmp;
 struct plimit *oldlim;
 struct proc *p;
 struct rusage ru;
 int t, ret;





 if (acct_vp == ((void*)0) || acct_suspended)
  return (0);

 sx_slock(&acct_sx);






 if (acct_vp == ((void*)0) || acct_suspended) {
  sx_sunlock(&acct_sx);
  return (0);
 }

 p = td->td_proc;





 sx_slock(&proctree_lock);
 PROC_LOCK(p);


 if ((p->p_flag & P_CONTROLT) && p->p_pgrp->pg_session->s_ttyp)
  acct.ac_tty = tty_udev(p->p_pgrp->pg_session->s_ttyp);
 else
  acct.ac_tty = NODEV;
 sx_sunlock(&proctree_lock);


 bcopy(p->p_comm, acct.ac_comm, sizeof acct.ac_comm);


 rufetchcalc(p, &ru, &ut, &st);
 acct.ac_utime = encode_timeval(ut);
 acct.ac_stime = encode_timeval(st);


 getboottime(&tmp);
 timevaladd(&tmp, &p->p_stats->p_start);
 acct.ac_btime = tmp.tv_sec;
 microuptime(&tmp);
 timevalsub(&tmp, &p->p_stats->p_start);
 acct.ac_etime = encode_timeval(tmp);


 tmp = ut;
 timevaladd(&tmp, &st);

 t = tmp.tv_sec * hz + tmp.tv_usec / tick;
 if (t)
  acct.ac_mem = encode_long((ru.ru_ixrss + ru.ru_idrss +
      + ru.ru_isrss) / t);
 else
  acct.ac_mem = 0;


 acct.ac_io = encode_long(ru.ru_inblock + ru.ru_oublock);


 acct.ac_uid = p->p_ucred->cr_ruid;
 acct.ac_gid = p->p_ucred->cr_rgid;


 acct.ac_flagx = p->p_acflag;


 acct.ac_flagx |= ANVER;
 acct.ac_zero = 0;
 acct.ac_version = 3;
 acct.ac_len = acct.ac_len2 = sizeof(acct);




 oldlim = p->p_limit;
 p->p_limit = lim_hold(acct_limit);
 PROC_UNLOCK(p);
 lim_free(oldlim);




 ret = vn_rdwr(UIO_WRITE, acct_vp, (caddr_t)&acct, sizeof (acct),
     (off_t)0, UIO_SYSSPACE, IO_APPEND|IO_UNIT, acct_cred, NOCRED,
     ((void*)0), td);
 sx_sunlock(&acct_sx);
 return (ret);
}
