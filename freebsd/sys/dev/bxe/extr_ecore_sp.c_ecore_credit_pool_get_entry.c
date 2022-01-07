
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_credit_pool_obj {int base_pool_offset; int * pool_mirror; } ;


 int BIT_VEC64_CLEAR_BIT (int *,int) ;
 int BIT_VEC64_ELEM_SZ ;
 scalar_t__ BIT_VEC64_TEST_BIT (int *,int) ;
 int ECORE_POOL_VEC_SIZE ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool ecore_credit_pool_get_entry(
 struct ecore_credit_pool_obj *o,
 int *offset)
{
 int idx, vec, i;

 *offset = -1;


 for (vec = 0; vec < ECORE_POOL_VEC_SIZE; vec++) {


  if (!o->pool_mirror[vec])
   continue;


  for (idx = vec * BIT_VEC64_ELEM_SZ, i = 0;
        i < BIT_VEC64_ELEM_SZ; idx++, i++)

   if (BIT_VEC64_TEST_BIT(o->pool_mirror, idx)) {

    BIT_VEC64_CLEAR_BIT(o->pool_mirror, idx);
    *offset = o->base_pool_offset + idx;
    return TRUE;
   }
 }

 return FALSE;
}
