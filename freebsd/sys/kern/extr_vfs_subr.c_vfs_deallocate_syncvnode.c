
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {struct vnode* mnt_syncer; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sync_mtx ;
 int vrele (struct vnode*) ;

void
vfs_deallocate_syncvnode(struct mount *mp)
{
 struct vnode *vp;

 mtx_lock(&sync_mtx);
 vp = mp->mnt_syncer;
 if (vp != ((void*)0))
  mp->mnt_syncer = ((void*)0);
 mtx_unlock(&sync_mtx);
 if (vp != ((void*)0))
  vrele(vp);
}
