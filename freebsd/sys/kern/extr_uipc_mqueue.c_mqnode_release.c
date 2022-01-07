
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqfs_node {scalar_t__ mn_type; int mn_refcount; struct mqfs_info* mn_info; } ;
struct mqfs_info {int mi_lock; } ;


 int atomic_fetchadd_int (int *,int) ;
 int mqfs_destroy (struct mqfs_node*) ;
 scalar_t__ mqfstype_dir ;
 scalar_t__ mqfstype_root ;
 int sx_xlock (int *) ;
 int sx_xlocked (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static __inline void
mqnode_release(struct mqfs_node *node)
{
 struct mqfs_info *mqfs;
 int old, exp;

 mqfs = node->mn_info;
 old = atomic_fetchadd_int(&node->mn_refcount, -1);
 if (node->mn_type == mqfstype_dir ||
     node->mn_type == mqfstype_root)
  exp = 3;
 else
  exp = 1;
 if (old == exp) {
  int locked = sx_xlocked(&mqfs->mi_lock);
  if (!locked)
   sx_xlock(&mqfs->mi_lock);
  mqfs_destroy(node);
  if (!locked)
   sx_xunlock(&mqfs->mi_lock);
 }
}
