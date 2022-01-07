
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct ucred {scalar_t__ cr_uid; } ;
struct thread {int dummy; } ;
struct mqfs_node {scalar_t__ mn_uid; scalar_t__ mn_gid; } ;
struct file {struct mqfs_node* f_data; } ;
typedef scalar_t__ gid_t ;
struct TYPE_2__ {int mi_lock; } ;


 int PRIV_VFS_CHOWN ;
 int groupmember (scalar_t__,struct ucred*) ;
 TYPE_1__ mqfs_data ;
 int priv_check_cred (struct ucred*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
mqf_chown(struct file *fp, uid_t uid, gid_t gid, struct ucred *active_cred,
    struct thread *td)
{
 struct mqfs_node *pn;
 int error;

 error = 0;
 pn = fp->f_data;
 sx_xlock(&mqfs_data.mi_lock);
 if (uid == (uid_t)-1)
  uid = pn->mn_uid;
 if (gid == (gid_t)-1)
  gid = pn->mn_gid;
 if (((uid != pn->mn_uid && uid != active_cred->cr_uid) ||
     (gid != pn->mn_gid && !groupmember(gid, active_cred))) &&
     (error = priv_check_cred(active_cred, PRIV_VFS_CHOWN)))
  goto out;
 pn->mn_uid = uid;
 pn->mn_gid = gid;
out:
 sx_xunlock(&mqfs_data.mi_lock);
 return (error);
}
