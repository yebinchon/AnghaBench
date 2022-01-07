
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bus_dma_tag_t ;
typedef int bus_addr_t ;
struct TYPE_3__ {scalar_t__ (* filter ) (int ,int) ;int lowaddr; int highaddr; int alignment; struct TYPE_3__* parent; int filterarg; int * iommu; } ;


 scalar_t__ stub1 (int ,int) ;

__attribute__((used)) static __inline int
run_filter(bus_dma_tag_t dmat, bus_addr_t paddr)
{
 int retval;

 retval = 0;

 do {
  if (dmat->filter == ((void*)0) && dmat->iommu == ((void*)0) &&
      paddr > dmat->lowaddr && paddr <= dmat->highaddr)
   retval = 1;
  if (dmat->filter == ((void*)0) &&
      (paddr & (dmat->alignment - 1)) != 0)
   retval = 1;
  if (dmat->filter != ((void*)0) &&
      (*dmat->filter)(dmat->filterarg, paddr) != 0)
   retval = 1;

  dmat = dmat->parent;
 } while (retval == 0 && dmat != ((void*)0));
 return (retval);
}
