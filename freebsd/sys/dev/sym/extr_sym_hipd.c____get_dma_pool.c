
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dev_dmat; struct TYPE_4__* next; } ;
typedef TYPE_1__ m_pool_s ;
typedef scalar_t__ bus_dma_tag_t ;
struct TYPE_5__ {TYPE_1__* next; } ;


 TYPE_2__ mp0 ;

__attribute__((used)) static __inline m_pool_s *___get_dma_pool(bus_dma_tag_t dev_dmat)
{
 m_pool_s *mp;
 for (mp = mp0.next; mp && mp->dev_dmat != dev_dmat; mp = mp->next);
 return mp;
}
