
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_data; } ;
struct devfs_dirent {int * de_vnode; } ;


 int devfs_de_interlock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vgone (struct vnode*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static void
devfs_insmntque_dtr(struct vnode *vp, void *arg)
{
 struct devfs_dirent *de;

 de = (struct devfs_dirent *)arg;
 mtx_lock(&devfs_de_interlock);
 vp->v_data = ((void*)0);
 de->de_vnode = ((void*)0);
 mtx_unlock(&devfs_de_interlock);
 vgone(vp);
 vput(vp);
}
