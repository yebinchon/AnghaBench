
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;
struct domainset {int dummy; } ;


 struct domainset* DOMAINSET_PREF (int) ;
 struct domainset* DOMAINSET_RR () ;
 int UMA_ANYDOMAIN ;
 int kstack_pages ;
 scalar_t__ vm_thread_stack_create (struct domainset*,int *,int ) ;

__attribute__((used)) static int
kstack_import(void *arg, void **store, int cnt, int domain, int flags)
{
 struct domainset *ds;
 vm_object_t ksobj;
 int i;

 if (domain == UMA_ANYDOMAIN)
  ds = DOMAINSET_RR();
 else
  ds = DOMAINSET_PREF(domain);

 for (i = 0; i < cnt; i++) {
  store[i] = (void *)vm_thread_stack_create(ds, &ksobj,
      kstack_pages);
  if (store[i] == ((void*)0))
   break;
 }
 return (i);
}
