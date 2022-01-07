
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_set_text_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_writecount; int v_iflag; struct mount* v_mount; } ;
struct mount {int mnt_kern_flag; } ;


 int ETXTBSY ;
 int MNTK_TEXT_REFS ;
 int VI_LOCK (struct vnode*) ;
 int VI_TEXT_REF ;
 int VI_UNLOCK (struct vnode*) ;
 int vrefl (struct vnode*) ;

int
vop_stdset_text(struct vop_set_text_args *ap)
{
 struct vnode *vp;
 struct mount *mp;
 int error;

 vp = ap->a_vp;
 VI_LOCK(vp);
 if (vp->v_writecount > 0) {
  error = ETXTBSY;
 } else {




  mp = vp->v_mount;
  if (mp != ((void*)0) && (mp->mnt_kern_flag & MNTK_TEXT_REFS) != 0 &&
      vp->v_writecount == 0) {
   vp->v_iflag |= VI_TEXT_REF;
   vrefl(vp);
  }

  vp->v_writecount--;
  error = 0;
 }
 VI_UNLOCK(vp);
 return (error);
}
