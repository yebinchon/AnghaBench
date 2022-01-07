
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_state {size_t slab_nr; int * slabs; } ;


 int FREE_AND_NULL (int *) ;
 int free (int ) ;

void clear_alloc_state(struct alloc_state *s)
{
 while (s->slab_nr > 0) {
  s->slab_nr--;
  free(s->slabs[s->slab_nr]);
 }

 FREE_AND_NULL(s->slabs);
}
