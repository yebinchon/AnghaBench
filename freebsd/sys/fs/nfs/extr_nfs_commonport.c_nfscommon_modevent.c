
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_2__ {int nr_mtx; } ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int MTX_DEF ;
 int NFSEXITCODE (int) ;
 int TAILQ_INIT (int *) ;
 int callout_drain (int *) ;
 int callout_init (int *,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int newnfs_init () ;
 int newnfs_numnfsd ;
 int newnfs_portinit () ;
 int newnfsd_callout ;
 int newnfsd_mtx ;
 int nfs_clstate_mutex ;
 int nfs_nameid_mutex ;
 int nfs_numnfscbd ;
 int nfs_req_mutex ;
 int nfs_slock_mutex ;
 int nfs_sockl_mutex ;
 int nfs_state_mutex ;
 int * nfsd_call_nfscommon ;
 int nfsrv_cleanusergroup () ;
 int nfsrv_devidhead ;
 int nfsrv_dslock_mtx ;
 int nfsrv_nfsuserd ;
 TYPE_1__ nfsrv_nfsuserdsock ;
 int * nfssvc_nfscommon ;

__attribute__((used)) static int
nfscommon_modevent(module_t mod, int type, void *data)
{
 int error = 0;
 static int loaded = 0;

 switch (type) {
 case 129:
  if (loaded)
   goto out;
  newnfs_portinit();
  mtx_init(&nfs_nameid_mutex, "nfs_nameid_mutex", ((void*)0), MTX_DEF);
  mtx_init(&nfs_sockl_mutex, "nfs_sockl_mutex", ((void*)0), MTX_DEF);
  mtx_init(&nfs_slock_mutex, "nfs_slock_mutex", ((void*)0), MTX_DEF);
  mtx_init(&nfs_req_mutex, "nfs_req_mutex", ((void*)0), MTX_DEF);
  mtx_init(&nfsrv_nfsuserdsock.nr_mtx, "nfsuserd", ((void*)0),
      MTX_DEF);
  mtx_init(&nfsrv_dslock_mtx, "nfs4ds", ((void*)0), MTX_DEF);
  TAILQ_INIT(&nfsrv_devidhead);
  callout_init(&newnfsd_callout, 1);
  newnfs_init();
  nfsd_call_nfscommon = nfssvc_nfscommon;
  loaded = 1;
  break;

 case 128:
  if (newnfs_numnfsd != 0 || nfsrv_nfsuserd != 0 ||
      nfs_numnfscbd != 0) {
   error = EBUSY;
   break;
  }

  nfsd_call_nfscommon = ((void*)0);
  callout_drain(&newnfsd_callout);

  nfsrv_cleanusergroup();

  mtx_destroy(&nfs_nameid_mutex);
  mtx_destroy(&newnfsd_mtx);
  mtx_destroy(&nfs_state_mutex);
  mtx_destroy(&nfs_clstate_mutex);
  mtx_destroy(&nfs_sockl_mutex);
  mtx_destroy(&nfs_slock_mutex);
  mtx_destroy(&nfs_req_mutex);
  mtx_destroy(&nfsrv_nfsuserdsock.nr_mtx);
  mtx_destroy(&nfsrv_dslock_mtx);
  loaded = 0;
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

out:
 NFSEXITCODE(error);
 return error;
}
