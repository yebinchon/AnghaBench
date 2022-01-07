
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_credit_pool_obj {int credit; } ;


 int ECORE_SMP_MB () ;
 int __atomic_dec_ifmoe (int *,int,int ) ;

__attribute__((used)) static bool ecore_credit_pool_get(struct ecore_credit_pool_obj *o, int cnt)
{
 bool rc;

 ECORE_SMP_MB();
 rc = __atomic_dec_ifmoe(&o->credit, cnt, 0);
 ECORE_SMP_MB();

 return rc;
}
