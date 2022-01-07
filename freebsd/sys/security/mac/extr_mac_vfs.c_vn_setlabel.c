
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct TYPE_2__ {int mnt_flag; } ;


 int EBADF ;
 int EOPNOTSUPP ;
 int MNT_MULTILABEL ;
 int VADMIN ;
 scalar_t__ VNON ;
 int VOP_ACCESS (struct vnode*,int ,struct ucred*,int ) ;
 int VOP_SETLABEL (struct vnode*,struct label*,struct ucred*,int ) ;
 int curthread ;
 int mac_vnode_check_relabel (struct ucred*,struct vnode*,struct label*) ;
 int printf (char*) ;

int
vn_setlabel(struct vnode *vp, struct label *intlabel, struct ucred *cred)
{
 int error;

 if (vp->v_mount == ((void*)0)) {

  if (vp->v_type != VNON)
   printf("vn_setlabel: null v_mount with non-VNON\n");
  return (EBADF);
 }

 if ((vp->v_mount->mnt_flag & MNT_MULTILABEL) == 0)
  return (EOPNOTSUPP);
 error = mac_vnode_check_relabel(cred, vp, intlabel);
 if (error)
  return (error);
 error = VOP_ACCESS(vp, VADMIN, cred, curthread);
 if (error)
  return (error);

 error = VOP_SETLABEL(vp, intlabel, cred, curthread);
 if (error)
  return (error);

 return (0);
}
