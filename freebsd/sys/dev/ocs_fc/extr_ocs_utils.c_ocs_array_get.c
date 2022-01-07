
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {size_t count; size_t elems_per_row; size_t size; scalar_t__* array_rows; } ;
typedef TYPE_1__ ocs_array_t ;



void *ocs_array_get(ocs_array_t *array, uint32_t idx)
{
 void *entry = ((void*)0);

 if (idx < array->count) {
  uint32_t row = idx / array->elems_per_row;
  uint32_t offset = idx % array->elems_per_row;
  entry = ((uint8_t*)array->array_rows[row]) + (offset * array->size);
 }
 return entry;
}
