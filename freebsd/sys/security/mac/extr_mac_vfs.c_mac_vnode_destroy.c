
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_label; } ;


 int mac_vnode_label_free (int *) ;

void
mac_vnode_destroy(struct vnode *vp)
{

 if (vp->v_label != ((void*)0)) {
  mac_vnode_label_free(vp->v_label);
  vp->v_label = ((void*)0);
 }
}
