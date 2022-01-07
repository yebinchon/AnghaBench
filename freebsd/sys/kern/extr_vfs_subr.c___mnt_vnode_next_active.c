
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int mnt_listmtx; } ;


 int PRI_USER ;
 int kern_yield (int ) ;
 struct vnode* mnt_vnode_next_active (struct vnode**,struct mount*) ;
 int mtx_lock (int *) ;
 scalar_t__ should_yield () ;

struct vnode *
__mnt_vnode_next_active(struct vnode **mvp, struct mount *mp)
{

 if (should_yield())
  kern_yield(PRI_USER);
 mtx_lock(&mp->mnt_listmtx);
 return (mnt_vnode_next_active(mvp, mp));
}
