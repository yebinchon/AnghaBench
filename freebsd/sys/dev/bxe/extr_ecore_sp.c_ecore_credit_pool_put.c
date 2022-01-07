
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_credit_pool_obj {scalar_t__ pool_sz; int credit; } ;


 int ECORE_SMP_MB () ;
 int __atomic_add_ifless (int *,int,scalar_t__) ;

__attribute__((used)) static bool ecore_credit_pool_put(struct ecore_credit_pool_obj *o, int cnt)
{
 bool rc;

 ECORE_SMP_MB();


 rc = __atomic_add_ifless(&o->credit, cnt, o->pool_sz + 1);

 ECORE_SMP_MB();

 return rc;
}
