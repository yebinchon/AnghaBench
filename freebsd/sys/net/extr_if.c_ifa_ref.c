
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int ifa_refcnt; } ;


 int refcount_acquire (int *) ;

void
ifa_ref(struct ifaddr *ifa)
{

 refcount_acquire(&ifa->ifa_refcnt);
}
