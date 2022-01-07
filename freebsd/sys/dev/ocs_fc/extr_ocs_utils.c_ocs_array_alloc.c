
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_os_handle_t ;
struct TYPE_4__ {int size; int count; int elems_per_row; int n_rows; int bytes_per_row; int array_rows_len; int ** array_rows; int os; } ;
typedef TYPE_1__ ocs_array_t ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int ocs_array_free (TYPE_1__*) ;
 int ocs_log_err (int *,char*) ;
 void* ocs_malloc (int ,int,int) ;
 int slab_len ;

ocs_array_t *
ocs_array_alloc(ocs_os_handle_t os, uint32_t size, uint32_t count)
{
 ocs_array_t *array = ((void*)0);
 uint32_t i;




 if (size > slab_len) {
  ocs_log_err(((void*)0), "Error: size exceeds slab length\n");
  return ((void*)0);
 }

 array = ocs_malloc(os, sizeof(*array), OCS_M_ZERO | OCS_M_NOWAIT);
 if (array == ((void*)0)) {
  return ((void*)0);
 }

 array->os = os;
 array->size = size;
 array->count = count;
 array->elems_per_row = slab_len / size;
 array->n_rows = (count + array->elems_per_row - 1) / array->elems_per_row;
 array->bytes_per_row = array->elems_per_row * array->size;

 array->array_rows_len = array->n_rows * sizeof(*array->array_rows);
 array->array_rows = ocs_malloc(os, array->array_rows_len, OCS_M_ZERO | OCS_M_NOWAIT);
 if (array->array_rows == ((void*)0)) {
  ocs_array_free(array);
  return ((void*)0);
 }
 for (i = 0; i < array->n_rows; i++) {
  array->array_rows[i] = ocs_malloc(os, array->bytes_per_row, OCS_M_ZERO | OCS_M_NOWAIT);
  if (array->array_rows[i] == ((void*)0)) {
   ocs_array_free(array);
   return ((void*)0);
  }
 }

 return array;
}
