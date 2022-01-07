
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {int dummy; } ;


 int netmap_free_rings (struct netmap_adapter*) ;

__attribute__((used)) static void
netmap_mem2_rings_delete(struct netmap_adapter *na)
{

 netmap_free_rings(na);
}
