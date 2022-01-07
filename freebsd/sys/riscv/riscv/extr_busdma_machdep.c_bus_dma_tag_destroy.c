
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_dma_tag_common {TYPE_1__* impl; } ;
typedef scalar_t__ bus_dma_tag_t ;
struct TYPE_2__ {int (* tag_destroy ) (scalar_t__) ;} ;


 int stub1 (scalar_t__) ;

int
bus_dma_tag_destroy(bus_dma_tag_t dmat)
{
 struct bus_dma_tag_common *tc;

 tc = (struct bus_dma_tag_common *)dmat;
 return (tc->impl->tag_destroy(dmat));
}
