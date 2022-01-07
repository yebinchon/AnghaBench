
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_op; int * v_data; } ;


 int dead_vnodeops ;
 int vgone (struct vnode*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static void
insmntque_stddtr(struct vnode *vp, void *dtr_arg)
{

 vp->v_data = ((void*)0);
 vp->v_op = &dead_vnodeops;
 vgone(vp);
 vput(vp);
}
