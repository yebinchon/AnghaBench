
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parent_tag; } ;
struct TYPE_5__ {TYPE_1__ flags; int parent_tag; } ;
typedef TYPE_2__ qla_host_t ;


 int bus_dma_tag_destroy (int ) ;

__attribute__((used)) static void
qla_free_parent_dma_tag(qla_host_t *ha)
{
        if (ha->flags.parent_tag) {
                bus_dma_tag_destroy(ha->parent_tag);
                ha->flags.parent_tag = 0;
        }
}
