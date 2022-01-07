
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
typedef int accmode_t ;


 int EPERM ;


 struct ucred* NOCRED ;
 int PRIV_VFS_EXTATTR_SYSTEM ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,struct thread*) ;
 int priv_check_cred (struct ucred*,int ) ;

int
extattr_check_cred(struct vnode *vp, int attrnamespace, struct ucred *cred,
    struct thread *td, accmode_t accmode)
{




 if (cred == NOCRED)
  return (0);





 switch (attrnamespace) {
 case 129:

  return (priv_check_cred(cred, PRIV_VFS_EXTATTR_SYSTEM));
 case 128:
  return (VOP_ACCESS(vp, accmode, cred, td));
 default:
  return (EPERM);
 }
}
