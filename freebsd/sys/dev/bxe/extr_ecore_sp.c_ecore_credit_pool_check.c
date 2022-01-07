
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_credit_pool_obj {int credit; } ;


 int ECORE_ATOMIC_READ (int *) ;
 int ECORE_SMP_MB () ;

__attribute__((used)) static int ecore_credit_pool_check(struct ecore_credit_pool_obj *o)
{
 int cur_credit;

 ECORE_SMP_MB();
 cur_credit = ECORE_ATOMIC_READ(&o->credit);

 return cur_credit;
}
