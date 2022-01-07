
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int EOPNOTSUPP ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,struct label*) ;
 int NOCRED ;
 int VOP_CLOSEEXTATTR (struct vnode*,int,int ,int ) ;
 int VOP_OPENEXTATTR (struct vnode*,struct ucred*,int ) ;
 int curthread ;
 int ea_warn_once ;
 int printf (char*) ;
 int vnode_setlabel_extattr ;

__attribute__((used)) static int
mac_vnode_setlabel_extattr(struct ucred *cred, struct vnode *vp,
    struct label *intlabel)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_setlabel_extattr");

 error = VOP_OPENEXTATTR(vp, cred, curthread);
 if (error == EOPNOTSUPP) {
  if (ea_warn_once == 0) {
   printf("Warning: transactions not supported "
       "in EA write.\n");
   ea_warn_once = 1;
  }
 } else if (error)
  return (error);

 MAC_POLICY_CHECK(vnode_setlabel_extattr, cred, vp, vp->v_label,
     intlabel);

 if (error) {
  VOP_CLOSEEXTATTR(vp, 0, NOCRED, curthread);
  return (error);
 }

 error = VOP_CLOSEEXTATTR(vp, 1, NOCRED, curthread);
 if (error == EOPNOTSUPP)
  error = 0;

 return (error);
}
