
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_5__ {scalar_t__ targ; scalar_t__ init; TYPE_1__* sport; } ;
typedef TYPE_2__ ocs_node_t ;
typedef int ocs_node_enable_e ;
struct TYPE_4__ {scalar_t__ enable_tgt; scalar_t__ enable_ini; } ;



__attribute__((used)) static inline ocs_node_enable_e ocs_node_get_enable(ocs_node_t *node)
{
 uint32_t retval = 0;

 if (node->sport->enable_ini) retval |= (1U << 3);
 if (node->sport->enable_tgt) retval |= (1U << 2);
 if (node->init) retval |= (1U << 1);
 if (node->targ) retval |= (1U << 0);
 return (ocs_node_enable_e) retval;
}
