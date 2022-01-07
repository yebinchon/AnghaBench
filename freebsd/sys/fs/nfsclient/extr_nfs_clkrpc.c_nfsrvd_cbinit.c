
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sp_done; int * sp_assign; int * sp_rcache; } ;


 int NFSDLOCKMUTEXPTR ;
 int NFSD_LOCK () ;
 int NFSD_LOCK_ASSERT () ;
 int NFSD_UNLOCK () ;
 int PZERO ;
 int msleep (scalar_t__*,int ,int ,char*,int ) ;
 scalar_t__ nfs_numnfscbd ;
 TYPE_1__* nfscbd_pool ;
 int svcpool_close (TYPE_1__*) ;
 TYPE_1__* svcpool_create (char*,int *) ;

void
nfsrvd_cbinit(int terminating)
{

 NFSD_LOCK_ASSERT();

 if (terminating) {

  while (nfs_numnfscbd > 0)
   msleep(&nfs_numnfscbd, NFSDLOCKMUTEXPTR, PZERO,
       "nfscbdt", 0);
  if (nfscbd_pool != ((void*)0)) {
   NFSD_UNLOCK();
   svcpool_close(nfscbd_pool);
   NFSD_LOCK();
  }
 }

 if (nfscbd_pool == ((void*)0)) {
  NFSD_UNLOCK();
  nfscbd_pool = svcpool_create("nfscbd", ((void*)0));
  nfscbd_pool->sp_rcache = ((void*)0);
  nfscbd_pool->sp_assign = ((void*)0);
  nfscbd_pool->sp_done = ((void*)0);
  NFSD_LOCK();
 }
}
