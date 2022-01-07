
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_label; } ;


 int MPC_OBJECT_VNODE ;
 int mac_labeled ;
 int * mac_vnode_label_alloc () ;

void
mac_vnode_init(struct vnode *vp)
{

 if (mac_labeled & MPC_OBJECT_VNODE)
  vp->v_label = mac_vnode_label_alloc();
 else
  vp->v_label = ((void*)0);
}
