
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int offset; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ ocs_list_t ;


 int ocs_list_assert (TYPE_1__*) ;
 int ocs_list_set_list_magic ;

__attribute__((used)) static inline void
_ocs_list_init(ocs_list_t *list, uint32_t offset)
{
 ocs_list_assert(list);
 ocs_list_set_list_magic;

 list->next = list;
 list->prev = list;
 list->offset = offset;
}
