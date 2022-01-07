
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sp_done; int sp_assign; int * sp_rcache; } ;


 int M_TEMP ;
 int NFSD_LOCK () ;
 int NFSD_LOCK_ASSERT () ;
 int NFSD_UNLOCK () ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _vfs_nfsd ;
 int fha_nd_complete ;
 int fhanew_assign ;
 int free (int *,int ) ;
 int * nfsd_master_proc ;
 int nfsrv_freeallbackchannel_xprts () ;
 int nfsrv_freealllayoutsanddevids () ;
 int * nfsrv_zeropnfsdat ;
 TYPE_1__* nfsrvd_pool ;
 int svcpool_close (TYPE_1__*) ;
 TYPE_1__* svcpool_create (char*,int ) ;

void
nfsrvd_init(int terminating)
{

 NFSD_LOCK_ASSERT();

 if (terminating) {
  nfsd_master_proc = ((void*)0);
  NFSD_UNLOCK();
  nfsrv_freealllayoutsanddevids();
  nfsrv_freeallbackchannel_xprts();
  svcpool_close(nfsrvd_pool);
  free(nfsrv_zeropnfsdat, M_TEMP);
  nfsrv_zeropnfsdat = ((void*)0);
  NFSD_LOCK();
 } else {
  NFSD_UNLOCK();
  nfsrvd_pool = svcpool_create("nfsd",
      SYSCTL_STATIC_CHILDREN(_vfs_nfsd));
  nfsrvd_pool->sp_rcache = ((void*)0);
  nfsrvd_pool->sp_assign = fhanew_assign;
  nfsrvd_pool->sp_done = fha_nd_complete;
  NFSD_LOCK();
 }
}
