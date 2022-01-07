
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int KASSERT (int,char*) ;
 int mtx_destroy (int *) ;
 int pfs_exit_tag ;
 int pfs_purge_all () ;
 scalar_t__ pfs_vncache_entries ;
 int pfs_vncache_mutex ;
 int process_exit ;

void
pfs_vncache_unload(void)
{

 EVENTHANDLER_DEREGISTER(process_exit, pfs_exit_tag);
 pfs_purge_all();
 KASSERT(pfs_vncache_entries == 0,
     ("%d vncache entries remaining", pfs_vncache_entries));
 mtx_destroy(&pfs_vncache_mutex);
}
