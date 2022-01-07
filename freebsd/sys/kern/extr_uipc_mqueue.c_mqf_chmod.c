
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mqfs_node {int mn_mode; int mn_gid; int mn_uid; } ;
struct file {struct mqfs_node* f_data; } ;
typedef int mode_t ;
struct TYPE_2__ {int mi_lock; } ;


 int ACCESSPERMS ;
 int VADMIN ;
 int VREG ;
 TYPE_1__ mqfs_data ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vaccess (int ,int,int ,int ,int ,struct ucred*,int *) ;

__attribute__((used)) static int
mqf_chmod(struct file *fp, mode_t mode, struct ucred *active_cred,
    struct thread *td)
{
 struct mqfs_node *pn;
 int error;

 error = 0;
 pn = fp->f_data;
 sx_xlock(&mqfs_data.mi_lock);
 error = vaccess(VREG, pn->mn_mode, pn->mn_uid, pn->mn_gid, VADMIN,
     active_cred, ((void*)0));
 if (error != 0)
  goto out;
 pn->mn_mode = mode & ACCESSPERMS;
out:
 sx_xunlock(&mqfs_data.mi_lock);
 return (error);
}
