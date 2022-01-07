
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; struct mount* v_mount; } ;
struct null_node {int null_flags; } ;
struct null_mount {int nullm_flags; } ;
struct mount {int dummy; } ;


 struct null_mount* MOUNTTONULLMOUNT (struct mount*) ;
 int NULLM_CACHE ;
 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int NULLV_DROP ;
 struct null_node* VTONULL (struct vnode*) ;
 int VV_NOSYNC ;

__attribute__((used)) static int
null_want_recycle(struct vnode *vp)
{
 struct vnode *lvp;
 struct null_node *xp;
 struct mount *mp;
 struct null_mount *xmp;

 xp = VTONULL(vp);
 lvp = NULLVPTOLOWERVP(vp);
 mp = vp->v_mount;
 xmp = MOUNTTONULLMOUNT(mp);
 if ((xmp->nullm_flags & NULLM_CACHE) == 0 ||
     (xp->null_flags & NULLV_DROP) != 0 ||
     (lvp->v_vflag & VV_NOSYNC) != 0) {






  return (1);
 }
 return (0);
}
