
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_credit_pool_obj {int dummy; } ;


 int TRUE ;

__attribute__((used)) static bool ecore_credit_pool_get_entry_always_TRUE(
 struct ecore_credit_pool_obj *o,
 int *offset)
{
 *offset = -1;
 return TRUE;
}
