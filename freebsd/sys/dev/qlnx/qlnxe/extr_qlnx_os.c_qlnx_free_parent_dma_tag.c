
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent_tag; } ;
typedef TYPE_1__ qlnx_host_t ;


 int bus_dma_tag_destroy (int *) ;

__attribute__((used)) static void
qlnx_free_parent_dma_tag(qlnx_host_t *ha)
{
        if (ha->parent_tag != ((void*)0)) {
                bus_dma_tag_destroy(ha->parent_tag);
  ha->parent_tag = ((void*)0);
        }
 return;
}
