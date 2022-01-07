
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;




 int LK_RELEASE ;

 int LK_TYPE_MASK ;

 int VOP_ISLOCKED (struct vnode*) ;

__attribute__((used)) static int
unionfs_get_llt_revlock(struct vnode *vp, int flags)
{
 int revlock;

 revlock = 0;

 switch (flags & LK_TYPE_MASK) {
 case 129:
  if (VOP_ISLOCKED(vp) == 130)
   revlock = 128;
  else
   revlock = LK_RELEASE;
  break;
 case 130:
 case 128:
  revlock = LK_RELEASE;
  break;
 case 131:
  revlock = 128;
  break;
 default:
  break;
 }

 return (revlock);
}
