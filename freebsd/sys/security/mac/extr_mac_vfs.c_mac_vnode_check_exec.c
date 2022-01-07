
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct ucred {int dummy; } ;
struct image_params {int execlabel; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct vnode*,struct image_params*) ;
 int MAC_POLICY_CHECK (int ,struct ucred*,struct vnode*,int ,struct image_params*,int ) ;
 int vnode_check_exec ;

int
mac_vnode_check_exec(struct ucred *cred, struct vnode *vp,
    struct image_params *imgp)
{
 int error;

 ASSERT_VOP_LOCKED(vp, "mac_vnode_check_exec");

 MAC_POLICY_CHECK(vnode_check_exec, cred, vp, vp->v_label, imgp,
     imgp->execlabel);
 MAC_CHECK_PROBE3(vnode_check_exec, error, cred, vp, imgp);

 return (error);
}
