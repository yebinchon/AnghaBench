
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int refcnt; } ;


 int refcount_acquire (int *) ;

__attribute__((used)) static void
defrouter_ref(struct nd_defrouter *dr)
{

 refcount_acquire(&dr->refcnt);
}
