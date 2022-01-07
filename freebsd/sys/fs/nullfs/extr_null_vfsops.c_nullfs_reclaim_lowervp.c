
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int null_flags; } ;


 int NULLV_NOUNLOCK ;
 TYPE_1__* VTONULL (struct vnode*) ;
 struct vnode* null_hashget (struct mount*,struct vnode*) ;
 int vgone (struct vnode*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static void
nullfs_reclaim_lowervp(struct mount *mp, struct vnode *lowervp)
{
 struct vnode *vp;

 vp = null_hashget(mp, lowervp);
 if (vp == ((void*)0))
  return;
 VTONULL(vp)->null_flags |= NULLV_NOUNLOCK;
 vgone(vp);
 vput(vp);
}
