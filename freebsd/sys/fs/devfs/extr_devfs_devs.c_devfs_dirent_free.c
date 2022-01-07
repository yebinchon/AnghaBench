
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct devfs_dirent* v_data; } ;
struct devfs_dirent {struct vnode* de_vnode; } ;


 int M_DEVFS3 ;
 int devfs_de_interlock ;
 int free (struct devfs_dirent*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
devfs_dirent_free(struct devfs_dirent *de)
{
 struct vnode *vp;

 vp = de->de_vnode;
 mtx_lock(&devfs_de_interlock);
 if (vp != ((void*)0) && vp->v_data == de)
  vp->v_data = ((void*)0);
 mtx_unlock(&devfs_de_interlock);
 free(de, M_DEVFS3);
}
