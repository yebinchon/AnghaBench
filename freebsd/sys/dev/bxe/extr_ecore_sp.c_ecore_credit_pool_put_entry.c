
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_credit_pool_obj {int base_pool_offset; int pool_sz; int pool_mirror; } ;


 int BIT_VEC64_SET_BIT (int ,int) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool ecore_credit_pool_put_entry(
 struct ecore_credit_pool_obj *o,
 int offset)
{
 if (offset < o->base_pool_offset)
  return FALSE;

 offset -= o->base_pool_offset;

 if (offset >= o->pool_sz)
  return FALSE;


 BIT_VEC64_SET_BIT(o->pool_mirror, offset);

 return TRUE;
}
