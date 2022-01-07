
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t next_index; size_t entry_count; void** array; } ;
typedef TYPE_1__ ocs_varray_t ;



void *
_ocs_varray_iter_next(ocs_varray_t *va)
{
 void *rval;

 rval = va->array[va->next_index];
 if (++va->next_index >= va->entry_count) {
  va->next_index = 0;
 }
 return rval;
}
