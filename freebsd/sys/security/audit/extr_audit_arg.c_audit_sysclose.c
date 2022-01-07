
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct kaudit_record {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef int cap_rights_t ;


 int KASSERT (int ,char*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int audit_arg_fd (int) ;
 int audit_arg_vnode1 (struct vnode*) ;
 int cap_rights_init (int *) ;
 struct kaudit_record* currecord () ;
 int fdrop (struct file*,struct thread*) ;
 scalar_t__ getvnode (struct thread*,int,int ,struct file**) ;
 int vn_lock (struct vnode*,int) ;

void
audit_sysclose(struct thread *td, int fd)
{
 cap_rights_t rights;
 struct kaudit_record *ar;
 struct vnode *vp;
 struct file *fp;

 KASSERT(td != ((void*)0), ("audit_sysclose: td == NULL"));

 ar = currecord();
 if (ar == ((void*)0))
  return;

 audit_arg_fd(fd);

 if (getvnode(td, fd, cap_rights_init(&rights), &fp) != 0)
  return;

 vp = fp->f_vnode;
 vn_lock(vp, LK_SHARED | LK_RETRY);
 audit_arg_vnode1(vp);
 VOP_UNLOCK(vp, 0);
 fdrop(fp, td);
}
