
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hold_frames; } ;
typedef TYPE_1__ ocs_node_t ;


 int FALSE ;
 int ocs_assert (TYPE_1__*) ;

__attribute__((used)) static inline void
ocs_node_accept_frames(ocs_node_t *node)
{
 ocs_assert(node);
 node->hold_frames = FALSE;
}
