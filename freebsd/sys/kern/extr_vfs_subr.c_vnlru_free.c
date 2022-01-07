
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsops {int dummy; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vnlru_free_locked (int,struct vfsops*) ;
 int vnode_free_list_mtx ;

void
vnlru_free(int count, struct vfsops *mnt_op)
{

 mtx_lock(&vnode_free_list_mtx);
 vnlru_free_locked(count, mnt_op);
 mtx_unlock(&vnode_free_list_mtx);
}
