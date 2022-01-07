
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_op; int * v_data; int * v_object; } ;


 int dead_vnodeops ;
 int tmpfs_destroy_vobject (struct vnode*,int *) ;
 int vgone (struct vnode*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static void
tmpfs_insmntque_dtr(struct vnode *vp, void *dtr_arg)
{

 tmpfs_destroy_vobject(vp, vp->v_object);
 vp->v_object = ((void*)0);
 vp->v_data = ((void*)0);
 vp->v_op = &dead_vnodeops;
 vgone(vp);
 vput(vp);
}
