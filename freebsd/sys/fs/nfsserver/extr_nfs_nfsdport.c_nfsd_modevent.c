
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_14__ {int mtx; } ;
struct TYPE_13__ {int mtx; } ;
struct TYPE_12__ {int mtx; } ;
struct TYPE_11__ {int mnt_explock; int mnt_mtx; } ;
struct TYPE_10__ {int * vndeleg_disable; int * vndeleg_recall; } ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int MTX_DEF ;
 int M_NFSDCLIENT ;
 int M_NFSDLOCKFILE ;
 int M_NFSDSESSION ;
 int NFSD_LOCK () ;
 int NFSD_UNLOCK () ;
 int NFSEXITCODE (int) ;
 int NFSRVCACHE_HASHSIZE ;
 int PVFS ;
 int curthread ;
 int free (TYPE_3__*,int ) ;
 int lockdestroy (int *) ;
 int lockinit (int *,int ,char*,int ,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int newnfs_numnfsd ;
 int newnfs_portinit () ;
 int nfs_v4root_mutex ;
 TYPE_3__* nfsclienthash ;
 int * nfsd_call_nfsd ;
 int * nfsd_call_servertimer ;
 int * nfsd_disabledelegation ;
 int nfsd_init () ;
 int nfsd_mntinit () ;
 int * nfsd_recalldelegation ;
 TYPE_3__* nfslayouthash ;
 TYPE_3__* nfslockhash ;
 int nfsrc_udpmtx ;
 TYPE_5__* nfsrcahash_table ;
 TYPE_4__* nfsrchash_table ;
 int nfsrv_dontlistlock_mtx ;
 int nfsrv_layouthashsize ;
 int nfsrv_recalllock_mtx ;
 int * nfsrv_servertimer ;
 int nfsrv_sessionhashsize ;
 int nfsrv_throwawayallstate (int ) ;
 int nfsrvd_cleancache () ;
 int nfsrvd_init (int ) ;
 int nfsrvd_initcache () ;
 int * nfsrvd_pool ;
 TYPE_3__* nfssessionhash ;
 int * nfssvc_nfsd ;
 TYPE_2__ nfsv4root_mnt ;
 int svcpool_destroy (int *) ;
 TYPE_1__ vn_deleg_ops ;

__attribute__((used)) static int
nfsd_modevent(module_t mod, int type, void *data)
{
 int error = 0, i;
 static int loaded = 0;

 switch (type) {
 case 129:
  if (loaded)
   goto out;
  newnfs_portinit();
  for (i = 0; i < NFSRVCACHE_HASHSIZE; i++) {
   mtx_init(&nfsrchash_table[i].mtx, "nfsrtc", ((void*)0),
       MTX_DEF);
   mtx_init(&nfsrcahash_table[i].mtx, "nfsrtca", ((void*)0),
       MTX_DEF);
  }
  mtx_init(&nfsrc_udpmtx, "nfsuc", ((void*)0), MTX_DEF);
  mtx_init(&nfs_v4root_mutex, "nfs4rt", ((void*)0), MTX_DEF);
  mtx_init(&nfsv4root_mnt.mnt_mtx, "nfs4mnt", ((void*)0), MTX_DEF);
  mtx_init(&nfsrv_dontlistlock_mtx, "nfs4dnl", ((void*)0), MTX_DEF);
  mtx_init(&nfsrv_recalllock_mtx, "nfs4rec", ((void*)0), MTX_DEF);
  lockinit(&nfsv4root_mnt.mnt_explock, PVFS, "explock", 0, 0);
  nfsrvd_initcache();
  nfsd_init();
  NFSD_LOCK();
  nfsrvd_init(0);
  NFSD_UNLOCK();
  nfsd_mntinit();




  nfsd_call_servertimer = nfsrv_servertimer;
  nfsd_call_nfsd = nfssvc_nfsd;
  loaded = 1;
  break;

 case 128:
  if (newnfs_numnfsd != 0) {
   error = EBUSY;
   break;
  }





  nfsd_call_servertimer = ((void*)0);
  nfsd_call_nfsd = ((void*)0);


  nfsrv_throwawayallstate(curthread);


  nfsrvd_cleancache();


  if (nfsrvd_pool != ((void*)0))
   svcpool_destroy(nfsrvd_pool);


  for (i = 0; i < NFSRVCACHE_HASHSIZE; i++) {
   mtx_destroy(&nfsrchash_table[i].mtx);
   mtx_destroy(&nfsrcahash_table[i].mtx);
  }
  mtx_destroy(&nfsrc_udpmtx);
  mtx_destroy(&nfs_v4root_mutex);
  mtx_destroy(&nfsv4root_mnt.mnt_mtx);
  mtx_destroy(&nfsrv_dontlistlock_mtx);
  mtx_destroy(&nfsrv_recalllock_mtx);
  for (i = 0; i < nfsrv_sessionhashsize; i++)
   mtx_destroy(&nfssessionhash[i].mtx);
  if (nfslayouthash != ((void*)0)) {
   for (i = 0; i < nfsrv_layouthashsize; i++)
    mtx_destroy(&nfslayouthash[i].mtx);
   free(nfslayouthash, M_NFSDSESSION);
  }
  lockdestroy(&nfsv4root_mnt.mnt_explock);
  free(nfsclienthash, M_NFSDCLIENT);
  free(nfslockhash, M_NFSDLOCKFILE);
  free(nfssessionhash, M_NFSDSESSION);
  loaded = 0;
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

out:
 NFSEXITCODE(error);
 return (error);
}
