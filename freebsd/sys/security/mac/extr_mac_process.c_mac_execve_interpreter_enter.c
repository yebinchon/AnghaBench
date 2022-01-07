
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct label {int dummy; } ;


 int MPC_OBJECT_VNODE ;
 int mac_labeled ;
 int mac_vnode_copy_label (int ,struct label*) ;
 struct label* mac_vnode_label_alloc () ;

void
mac_execve_interpreter_enter(struct vnode *interpvp,
    struct label **interpvplabel)
{

 if (mac_labeled & MPC_OBJECT_VNODE) {
  *interpvplabel = mac_vnode_label_alloc();
  mac_vnode_copy_label(interpvp->v_label, *interpvplabel);
 } else
  *interpvplabel = ((void*)0);
}
