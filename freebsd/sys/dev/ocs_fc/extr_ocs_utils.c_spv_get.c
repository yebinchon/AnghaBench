
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sparse_vector_t ;


 int FALSE ;
 void** spv_new_cell (int ,int ,int ) ;

void
*spv_get(sparse_vector_t sv, uint32_t idx)
{
 void **ref = spv_new_cell(sv, idx, FALSE);
 if (ref) {
  return *ref;
 }
 return ((void*)0);
}
