
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
typedef enum vgetstate { ____Placeholder_vgetstate } vgetstate ;


 int LK_INTERLOCK ;
 int MPASS (int) ;
 int _vget_prep (struct vnode*,int) ;
 struct thread* curthread ;
 int vget_finish (struct vnode*,int,int) ;

int
vget(struct vnode *vp, int flags, struct thread *td)
{
 enum vgetstate vs;

 MPASS(td == curthread);

 vs = _vget_prep(vp, (flags & LK_INTERLOCK) != 0);
 return (vget_finish(vp, flags, vs));
}
