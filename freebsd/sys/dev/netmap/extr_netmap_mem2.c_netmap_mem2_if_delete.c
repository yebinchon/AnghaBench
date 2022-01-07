
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_if {scalar_t__ ni_bufs_head; } ;
struct netmap_adapter {int nm_mem; } ;


 int netmap_extra_free (struct netmap_adapter*,scalar_t__) ;
 int netmap_if_free (int ,struct netmap_if*) ;

__attribute__((used)) static void
netmap_mem2_if_delete(struct netmap_adapter *na, struct netmap_if *nifp)
{
 if (nifp == ((void*)0))

  return;
 if (nifp->ni_bufs_head)
  netmap_extra_free(na, nifp->ni_bufs_head);
 netmap_if_free(na->nm_mem, nifp);
}
