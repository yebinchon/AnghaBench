
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct fuse_vnode_data* v_data; } ;
struct fuse_vnode_data {int handles; } ;


 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int M_FUSEVN ;
 int counter_u64_add (int ,int) ;
 int free (struct fuse_vnode_data*,int ) ;
 int fuse_node_count ;

void
fuse_vnode_destroy(struct vnode *vp)
{
 struct fuse_vnode_data *fvdat = vp->v_data;

 vp->v_data = ((void*)0);
 KASSERT(LIST_EMPTY(&fvdat->handles),
  ("Destroying fuse vnode with open files!"));
 free(fvdat, M_FUSEVN);

 counter_u64_add(fuse_node_count, -1);
}
