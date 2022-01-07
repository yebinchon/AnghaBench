
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int array_count; int lock; scalar_t__ next_index; int * array; int os; } ;
typedef TYPE_1__ ocs_varray_t ;
typedef int ocs_os_handle_t ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int ocs_free (int ,TYPE_1__*,int) ;
 int ocs_lock_init (int ,int *,char*,TYPE_1__*) ;
 void* ocs_malloc (int ,int,int) ;

ocs_varray_t *
ocs_varray_alloc(ocs_os_handle_t os, uint32_t array_count)
{
 ocs_varray_t *va;

 va = ocs_malloc(os, sizeof(*va), OCS_M_ZERO | OCS_M_NOWAIT);
 if (va != ((void*)0)) {
  va->os = os;
  va->array_count = array_count;
  va->array = ocs_malloc(os, sizeof(*va->array) * va->array_count, OCS_M_ZERO | OCS_M_NOWAIT);
  if (va->array != ((void*)0)) {
   va->next_index = 0;
   ocs_lock_init(os, &va->lock, "varray:%p", va);
  } else {
   ocs_free(os, va, sizeof(*va));
   va = ((void*)0);
  }
 }
 return va;
}
