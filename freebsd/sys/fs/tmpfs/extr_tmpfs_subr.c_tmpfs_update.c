
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int tmpfs_itimes (struct vnode*,int *,int *) ;

void
tmpfs_update(struct vnode *vp)
{

 tmpfs_itimes(vp, ((void*)0), ((void*)0));
}
