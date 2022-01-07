
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_unset_text_args {struct vnode* a_vp; } ;
struct vnode {int v_writecount; int v_iflag; } ;


 int EINVAL ;
 int VI_LOCK (struct vnode*) ;
 int VI_TEXT_REF ;
 int VI_UNLOCK (struct vnode*) ;
 int vunref (struct vnode*) ;

__attribute__((used)) static int
vop_stdunset_text(struct vop_unset_text_args *ap)
{
 struct vnode *vp;
 int error;
 bool last;

 vp = ap->a_vp;
 last = 0;
 VI_LOCK(vp);
 if (vp->v_writecount < 0) {
  if ((vp->v_iflag & VI_TEXT_REF) != 0 &&
      vp->v_writecount == -1) {
   last = 1;
   vp->v_iflag &= ~VI_TEXT_REF;
  }
  vp->v_writecount++;
  error = 0;
 } else {
  error = EINVAL;
 }
 VI_UNLOCK(vp);
 if (last)
  vunref(vp);
 return (error);
}
