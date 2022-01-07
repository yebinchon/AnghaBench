
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sparse_vector_t ;


 int TRUE ;
 void** spv_new_cell (int ,int ,int ) ;

void
spv_set(sparse_vector_t sv, uint32_t idx, void *value)
{
 void **ref = spv_new_cell(sv, idx, TRUE);
 if (ref) {
  *ref = value;
 }
}
