
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 long NAME_MAX ;
 int NFSEXITCODE (int) ;
 long NFS_LINK_MAX ;
 int VOP_PATHCONF (struct vnode*,int,long*) ;




 int printf (char*,int) ;

int
nfsvno_pathconf(struct vnode *vp, int flag, long *retf,
    struct ucred *cred, struct thread *p)
{
 int error;

 error = VOP_PATHCONF(vp, flag, retf);
 if (error == EOPNOTSUPP || error == EINVAL) {






  switch (flag) {
  case 130:
   *retf = NFS_LINK_MAX;
   break;
  case 129:
   *retf = NAME_MAX;
   break;
  case 131:
   *retf = 1;
   break;
  case 128:
   *retf = 1;
   break;
  default:




   *retf = 0;
   printf("nfsrvd pathconf flag=%d not supp\n", flag);
  }
  error = 0;
 }
 NFSEXITCODE(error);
 return (error);
}
