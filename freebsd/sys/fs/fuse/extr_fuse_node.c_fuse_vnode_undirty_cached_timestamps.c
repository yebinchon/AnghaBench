
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct fuse_vnode_data {int flag; } ;


 int FN_CTIMECHANGE ;
 int FN_MTIMECHANGE ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;

void
fuse_vnode_undirty_cached_timestamps(struct vnode *vp)
{
 struct fuse_vnode_data *fvdat = VTOFUD(vp);

 fvdat->flag &= ~(FN_MTIMECHANGE | FN_CTIMECHANGE);
}
