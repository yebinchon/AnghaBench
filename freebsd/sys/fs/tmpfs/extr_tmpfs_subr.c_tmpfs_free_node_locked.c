
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_object_t ;
struct TYPE_4__ {TYPE_2__* tn_aobj; } ;
struct tmpfs_node {scalar_t__ tn_refcount; int tn_attached; int tn_vpstate; int tn_type; TYPE_1__ tn_reg; int tn_link; int * tn_vnode; } ;
struct tmpfs_mount {scalar_t__ tm_nodes_inuse; int tm_node_pool; int tm_pages_used; } ;
struct TYPE_5__ {int flags; int size; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct tmpfs_node*,int ) ;
 int MPASS (int) ;
 int M_TMPFSNAME ;
 int OBJ_TMPFS ;
 int TMPFS_LOCK (struct tmpfs_mount*) ;
 int TMPFS_MP_ASSERT_LOCKED (struct tmpfs_mount*) ;
 int TMPFS_NODE_ASSERT_LOCKED (struct tmpfs_node*) ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 int TMPFS_UNLOCK (struct tmpfs_mount*) ;
 int TMPFS_VNODE_ALLOCATING ;







 int atomic_subtract_long (int *,int ) ;
 int free (int ,int ) ;
 int panic (char*,struct tmpfs_node*,int) ;
 int tmpfs_free_tmp (struct tmpfs_mount*) ;
 int tn_entries ;
 int uma_zfree (int ,struct tmpfs_node*) ;
 int vm_object_deallocate (TYPE_2__*) ;

bool
tmpfs_free_node_locked(struct tmpfs_mount *tmp, struct tmpfs_node *node,
    bool detach)
{
 vm_object_t uobj;

 TMPFS_MP_ASSERT_LOCKED(tmp);
 TMPFS_NODE_ASSERT_LOCKED(node);
 KASSERT(node->tn_refcount > 0, ("node %p refcount zero", node));

 node->tn_refcount--;
 if (node->tn_attached && (detach || node->tn_refcount == 0)) {
  MPASS(tmp->tm_nodes_inuse > 0);
  tmp->tm_nodes_inuse--;
  LIST_REMOVE(node, tn_entries);
  node->tn_attached = 0;
 }
 if (node->tn_refcount > 0)
  return (0);





 TMPFS_NODE_UNLOCK(node);
 TMPFS_UNLOCK(tmp);

 switch (node->tn_type) {
 case 134:

 case 133:

 case 132:

 case 131:

 case 128:
  break;

 case 130:
  free(node->tn_link, M_TMPFSNAME);
  break;

 case 129:
  uobj = node->tn_reg.tn_aobj;
  if (uobj != ((void*)0)) {
   if (uobj->size != 0)
    atomic_subtract_long(&tmp->tm_pages_used, uobj->size);
   KASSERT((uobj->flags & OBJ_TMPFS) == 0,
       ("leaked OBJ_TMPFS node %p vm_obj %p", node, uobj));
   vm_object_deallocate(uobj);
  }
  break;

 default:
  panic("tmpfs_free_node: type %p %d", node, (int)node->tn_type);
 }

 uma_zfree(tmp->tm_node_pool, node);
 TMPFS_LOCK(tmp);
 tmpfs_free_tmp(tmp);
 return (1);
}
