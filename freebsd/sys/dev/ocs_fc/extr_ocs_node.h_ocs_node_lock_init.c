
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int ocs; } ;
typedef TYPE_1__ ocs_node_t ;


 int ocs_rlock_init (int ,int *,char*) ;

__attribute__((used)) static inline void
ocs_node_lock_init(ocs_node_t *node)
{
 ocs_rlock_init(node->ocs, &node->lock, "node rlock");
}
