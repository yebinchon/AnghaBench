
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {struct devfs_dirent* v_data; } ;
struct devfs_dirent {int * de_vnode; } ;


 int devfs_de_interlock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
devfs_reclaim(struct vop_reclaim_args *ap)
{
 struct vnode *vp;
 struct devfs_dirent *de;

 vp = ap->a_vp;
 mtx_lock(&devfs_de_interlock);
 de = vp->v_data;
 if (de != ((void*)0)) {
  de->de_vnode = ((void*)0);
  vp->v_data = ((void*)0);
 }
 mtx_unlock(&devfs_de_interlock);
 return (0);
}
