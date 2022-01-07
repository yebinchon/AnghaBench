
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {TYPE_1__* td_ucred; } ;
struct mount {int dummy; } ;
struct dqblk64 {int dummy; } ;
struct dquot {struct dqblk64 dq_dqb; } ;
struct TYPE_2__ {int cr_uid; } ;


 int EINVAL ;

 struct dquot* NODQUOT ;
 int NULLVP ;
 int PRIV_VFS_GETQUOTA ;

 int VFSTOUFS (struct mount*) ;
 int dqget (int ,int ,int ,int,struct dquot**) ;
 int dqrele (int ,struct dquot*) ;
 int groupmember (int ,TYPE_1__*) ;
 int priv_check (struct thread*,int ) ;
 int unprivileged_get_quota ;

__attribute__((used)) static int
_getquota(struct thread *td, struct mount *mp, u_long id, int type,
    struct dqblk64 *dqb)
{
 struct dquot *dq;
 int error;

 switch (type) {
 case 128:
  if ((td->td_ucred->cr_uid != id) && !unprivileged_get_quota) {
   error = priv_check(td, PRIV_VFS_GETQUOTA);
   if (error)
    return (error);
  }
  break;

 case 129:
  if (!groupmember(id, td->td_ucred) &&
      !unprivileged_get_quota) {
   error = priv_check(td, PRIV_VFS_GETQUOTA);
   if (error)
    return (error);
  }
  break;

 default:
  return (EINVAL);
 }

 dq = NODQUOT;
 error = dqget(NULLVP, id, VFSTOUFS(mp), type, &dq);
 if (error)
  return (error);
 *dqb = dq->dq_dqb;
 dqrele(NULLVP, dq);
 return (error);
}
