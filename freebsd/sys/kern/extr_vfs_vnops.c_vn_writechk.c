
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int ETXTBSY ;
 scalar_t__ VOP_IS_TEXT (struct vnode*) ;

int
vn_writechk(struct vnode *vp)
{

 ASSERT_VOP_LOCKED(vp, "vn_writechk");





 if (VOP_IS_TEXT(vp))
  return (ETXTBSY);

 return (0);
}
