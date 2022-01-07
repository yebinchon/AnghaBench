
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int MTX_DEF ;
 int M_PFSVNCACHE ;
 int hashinit (int,int ,int *) ;
 int maxproc ;
 int mtx_init (int *,char*,int *,int ) ;
 int pfs_exit ;
 int pfs_exit_tag ;
 int pfs_vncache_hash ;
 int pfs_vncache_hashtbl ;
 int pfs_vncache_mutex ;
 int process_exit ;

void
pfs_vncache_load(void)
{

 mtx_init(&pfs_vncache_mutex, "pfs_vncache", ((void*)0), MTX_DEF);
 pfs_vncache_hashtbl = hashinit(maxproc / 4, M_PFSVNCACHE, &pfs_vncache_hash);
 pfs_exit_tag = EVENTHANDLER_REGISTER(process_exit, pfs_exit, ((void*)0),
     EVENTHANDLER_PRI_ANY);
}
