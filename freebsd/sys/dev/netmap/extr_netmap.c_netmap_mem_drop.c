
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {int * nm_mem_prev; int * nm_mem; } ;


 int netmap_mem_deref (int *,struct netmap_adapter*) ;
 int netmap_mem_put (int *) ;

__attribute__((used)) static void
netmap_mem_drop(struct netmap_adapter *na)
{
 int last = netmap_mem_deref(na->nm_mem, na);



 if (last && na->nm_mem_prev) {
  netmap_mem_put(na->nm_mem);
  na->nm_mem = na->nm_mem_prev;
  na->nm_mem_prev = ((void*)0);
 }
}
