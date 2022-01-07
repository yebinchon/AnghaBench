
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ num_elem; size_t head; int max_elem; int lock; int * elem_array; } ;
typedef TYPE_1__ pqi_taglist_t ;


 int ASSERT (int) ;
 int INVALID_ELEM ;
 int OS_ACQUIRE_SPINLOCK (int *) ;
 int OS_RELEASE_SPINLOCK (int *) ;

uint32_t pqisrc_get_tag(pqi_taglist_t *taglist)
{
 uint32_t elem = INVALID_ELEM;



 OS_ACQUIRE_SPINLOCK(&taglist->lock);

 ASSERT(taglist->num_elem > 0);

 if (taglist->num_elem > 0) {
  elem = taglist->elem_array[taglist->head];
  taglist->num_elem--;
  taglist->head = (taglist->head + 1) % taglist->max_elem;
 }

 OS_RELEASE_SPINLOCK(&taglist->lock);


 return elem;
}
