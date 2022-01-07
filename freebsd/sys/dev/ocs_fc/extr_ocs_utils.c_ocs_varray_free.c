
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int array_count; int os; struct TYPE_4__* array; int lock; } ;
typedef TYPE_1__ ocs_varray_t ;


 int ocs_free (int ,TYPE_1__*,int) ;
 int ocs_lock_free (int *) ;

void
ocs_varray_free(ocs_varray_t *va)
{
 if (va != ((void*)0)) {
  ocs_lock_free(&va->lock);
  if (va->array != ((void*)0)) {
   ocs_free(va->os, va->array, sizeof(*va->array) * va->array_count);
  }
  ocs_free(va->os, va, sizeof(*va));
 }
}
