
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int num_elem; int max_elem; size_t tail; int lock; int * elem_array; } ;
typedef TYPE_1__ pqi_taglist_t ;


 int ASSERT (int) ;
 int OS_ACQUIRE_SPINLOCK (int *) ;
 int OS_RELEASE_SPINLOCK (int *) ;

void pqisrc_put_tag(pqi_taglist_t *taglist, uint32_t elem)
{

 OS_ACQUIRE_SPINLOCK(&(taglist->lock));


 ASSERT(taglist->num_elem < taglist->max_elem);

 if (taglist->num_elem < taglist->max_elem) {
  taglist->elem_array[taglist->tail] = elem;
  taglist->num_elem++;
  taglist->tail = (taglist->tail + 1) % taglist->max_elem;
 }

 OS_RELEASE_SPINLOCK(&taglist->lock);


}
