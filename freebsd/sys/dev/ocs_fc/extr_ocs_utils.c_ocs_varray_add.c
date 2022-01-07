
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ entry_count; scalar_t__ array_count; int lock; void** array; } ;
typedef TYPE_1__ ocs_varray_t ;
typedef int int32_t ;


 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

int32_t
ocs_varray_add(ocs_varray_t *va, void *entry)
{
 uint32_t rc = -1;

 ocs_lock(&va->lock);
  if (va->entry_count < va->array_count) {
   va->array[va->entry_count++] = entry;
   rc = 0;
  }
 ocs_unlock(&va->lock);

 return rc;
}
