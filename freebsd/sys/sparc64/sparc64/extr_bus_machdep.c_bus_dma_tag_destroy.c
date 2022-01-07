
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_4__ {scalar_t__ dt_map_count; scalar_t__ dt_ref_count; struct TYPE_4__* dt_segments; struct TYPE_4__* dt_parent; } ;


 int EBUSY ;
 int M_DEVBUF ;
 int atomic_subtract_int (scalar_t__*,int) ;
 int free (TYPE_1__*,int ) ;

int
bus_dma_tag_destroy(bus_dma_tag_t dmat)
{
 bus_dma_tag_t parent;

 if (dmat != ((void*)0)) {
  if (dmat->dt_map_count != 0)
   return (EBUSY);
  while (dmat != ((void*)0)) {
   parent = dmat->dt_parent;
   atomic_subtract_int(&dmat->dt_ref_count, 1);
   if (dmat->dt_ref_count == 0) {
    if (dmat->dt_segments != ((void*)0))
     free(dmat->dt_segments, M_DEVBUF);
    free(dmat, M_DEVBUF);





    dmat = parent;
   } else
    dmat = ((void*)0);
  }
 }
 return (0);
}
