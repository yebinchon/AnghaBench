
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* sparse_vector_t ;
struct TYPE_3__ {int max_idx; void** array; int os; } ;


 int SPV_ROWLEN ;
 void** spv_new_row (int ,int ) ;

__attribute__((used)) static void
*spv_new_cell(sparse_vector_t sv, uint32_t idx, uint8_t alloc_new_rows)
{
 uint32_t a = (idx >> 16) & 0xff;
 uint32_t b = (idx >> 8) & 0xff;
 uint32_t c = (idx >> 0) & 0xff;
 void **p;

 if (idx >= sv->max_idx) {
  return ((void*)0);
 }

 if (sv->array == ((void*)0)) {
  sv->array = (alloc_new_rows ? spv_new_row(sv->os, SPV_ROWLEN) : ((void*)0));
  if (sv->array == ((void*)0)) {
   return ((void*)0);
  }
 }
 p = sv->array;
 if (p[a] == ((void*)0)) {
  p[a] = (alloc_new_rows ? spv_new_row(sv->os, SPV_ROWLEN) : ((void*)0));
  if (p[a] == ((void*)0)) {
   return ((void*)0);
  }
 }
 p = p[a];
 if (p[b] == ((void*)0)) {
  p[b] = (alloc_new_rows ? spv_new_row(sv->os, SPV_ROWLEN) : ((void*)0));
  if (p[b] == ((void*)0)) {
   return ((void*)0);
  }
 }
 p = p[b];

 return &p[c];
}
