
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int * v_data; } ;
struct udf_node {int * fentry; } ;


 int M_UDFFENTRY ;
 struct udf_node* VTON (struct vnode*) ;
 int free (int *,int ) ;
 int udf_zone_node ;
 int uma_zfree (int ,struct udf_node*) ;
 int vfs_hash_remove (struct vnode*) ;

__attribute__((used)) static int
udf_reclaim(struct vop_reclaim_args *a)
{
 struct vnode *vp;
 struct udf_node *unode;

 vp = a->a_vp;
 unode = VTON(vp);

 if (unode != ((void*)0)) {
  vfs_hash_remove(vp);

  if (unode->fentry != ((void*)0))
   free(unode->fentry, M_UDFFENTRY);
  uma_zfree(udf_zone_node, unode);
  vp->v_data = ((void*)0);
 }

 return (0);
}
