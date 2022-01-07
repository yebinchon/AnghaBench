
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {scalar_t__ dt_maxsize; scalar_t__ dt_alignment; } ;


 int M_DEVBUF ;
 scalar_t__ PAGE_SIZE ;
 int contigfree (void*,scalar_t__,int ) ;
 int free (void*,int ) ;

__attribute__((used)) static void
nexus_dmamem_free(bus_dma_tag_t dmat, void *vaddr, bus_dmamap_t map)
{

 if (dmat->dt_maxsize <= PAGE_SIZE &&
     dmat->dt_alignment < dmat->dt_maxsize)
  free(vaddr, M_DEVBUF);
 else
  contigfree(vaddr, dmat->dt_maxsize, M_DEVBUF);
}
