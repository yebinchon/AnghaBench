
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_dma_tag_common {int domain; TYPE_1__* impl; int lowaddr; } ;
typedef scalar_t__ bus_dma_tag_t ;
struct TYPE_2__ {int (* tag_set_domain ) (scalar_t__) ;} ;


 int stub1 (scalar_t__) ;
 int vm_phys_domain_match (int,unsigned long,int ) ;

int
bus_dma_tag_set_domain(bus_dma_tag_t dmat, int domain)
{
 struct bus_dma_tag_common *tc;

 tc = (struct bus_dma_tag_common *)dmat;
 domain = vm_phys_domain_match(domain, 0ul, tc->lowaddr);

 if (domain == tc->domain)
  return (0);
 tc->domain = domain;
 return (tc->impl->tag_set_domain(dmat));
}
