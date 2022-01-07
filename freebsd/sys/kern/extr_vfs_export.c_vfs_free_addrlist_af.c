
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node_head {int rh; int (* rnh_walktree ) (int *,int ,struct radix_node_head*) ;} ;


 int RADIX_NODE_HEAD_DESTROY (struct radix_node_head*) ;
 int RADIX_NODE_HEAD_LOCK (struct radix_node_head*) ;
 int RADIX_NODE_HEAD_UNLOCK (struct radix_node_head*) ;
 int rn_detachhead (void**) ;
 int stub1 (int *,int ,struct radix_node_head*) ;
 int vfs_free_netcred ;

__attribute__((used)) static void
vfs_free_addrlist_af(struct radix_node_head **prnh)
{
 struct radix_node_head *rnh;

 rnh = *prnh;
 RADIX_NODE_HEAD_LOCK(rnh);
 (*rnh->rnh_walktree)(&rnh->rh, vfs_free_netcred, rnh);
 RADIX_NODE_HEAD_UNLOCK(rnh);
 RADIX_NODE_HEAD_DESTROY(rnh);
 rn_detachhead((void **)prnh);
 prnh = ((void*)0);
}
