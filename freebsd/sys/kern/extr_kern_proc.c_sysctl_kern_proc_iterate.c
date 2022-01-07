
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uid_t ;
struct sysctl_req {int dummy; } ;
struct proc {int p_flag; TYPE_2__* p_ucred; TYPE_3__* p_session; TYPE_1__* p_pgrp; } ;
struct kern_proc_out_args {int* name; int oid_number; int flags; struct sysctl_req* req; } ;
typedef int pid_t ;
typedef int gid_t ;
typedef int dev_t ;
struct TYPE_7__ {int * s_ttyp; int s_sid; } ;
struct TYPE_6__ {int cr_ruid; int cr_uid; int cr_rgid; int cr_gid; } ;
struct TYPE_5__ {int pg_id; } ;


 int KASSERT (int ,char*) ;
 int MA_NOTOWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_CONTROLT ;
 int SESS_LOCK (TYPE_3__*) ;
 int SESS_UNLOCK (TYPE_3__*) ;
 int curthread ;
 scalar_t__ p_cansee (int ,struct proc*) ;
 int sysctl_out_proc (struct proc*,struct sysctl_req*,int) ;
 int tty_udev (int *) ;

__attribute__((used)) static int
sysctl_kern_proc_iterate(struct proc *p, void *origarg)
{
 struct kern_proc_out_args *arg = origarg;
 int *name = arg->name;
 int oid_number = arg->oid_number;
 int flags = arg->flags;
 struct sysctl_req *req = arg->req;
 int error = 0;

 PROC_LOCK(p);

 KASSERT(p->p_ucred != ((void*)0),
     ("process credential is NULL for non-NEW proc"));



 if (p_cansee(curthread, p))
  goto skip;




 switch (oid_number) {

 case 135:
  if (p->p_ucred->cr_gid != (gid_t)name[0])
   goto skip;
  break;

 case 134:

  if (p->p_pgrp == ((void*)0) ||
      p->p_pgrp->pg_id != (pid_t)name[0])
   goto skip;
  break;

 case 132:
  if (p->p_ucred->cr_rgid != (gid_t)name[0])
   goto skip;
  break;

 case 130:
  if (p->p_session == ((void*)0) ||
      p->p_session->s_sid != (pid_t)name[0])
   goto skip;
  break;

 case 129:
  if ((p->p_flag & P_CONTROLT) == 0 ||
      p->p_session == ((void*)0))
   goto skip;

  SESS_LOCK(p->p_session);
  if (p->p_session->s_ttyp == ((void*)0) ||
      tty_udev(p->p_session->s_ttyp) !=
      (dev_t)name[0]) {
   SESS_UNLOCK(p->p_session);
   goto skip;
  }
  SESS_UNLOCK(p->p_session);
  break;

 case 128:
  if (p->p_ucred->cr_uid != (uid_t)name[0])
   goto skip;
  break;

 case 131:
  if (p->p_ucred->cr_ruid != (uid_t)name[0])
   goto skip;
  break;

 case 133:
  break;

 default:
  break;

 }
 error = sysctl_out_proc(p, req, flags);
 PROC_LOCK_ASSERT(p, MA_NOTOWNED);
 return (error);
skip:
 PROC_UNLOCK(p);
 return (0);
}
