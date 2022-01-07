
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int newnfsd_mtx ;
 int nfs_clstate_mutex ;
 int nfs_state_mutex ;

void
newnfs_portinit(void)
{
 static int inited = 0;

 if (inited)
  return;
 inited = 1;

 mtx_init(&newnfsd_mtx, "newnfsd_mtx", ((void*)0), MTX_DEF);
 mtx_init(&nfs_state_mutex, "nfs_state_mutex", ((void*)0), MTX_DEF);
 mtx_init(&nfs_clstate_mutex, "nfs_clstate_mutex", ((void*)0), MTX_DEF);
}
