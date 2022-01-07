
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int MTX_DEF ;
 int NFSD_LOCK () ;
 int NFSD_UNLOCK () ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int * ncl_call_invalcaches ;
 int * ncl_invalcaches ;
 int ncl_iod_mutex ;
 int ncl_pbuf_zone ;
 int newnfs_portinit () ;
 int nfs_numnfscbd ;
 int nfscl_init () ;
 int * nfsd_call_nfscl ;
 int nfsrvd_cbinit (int ) ;
 int * nfssvc_nfscl ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
nfscl_modevent(module_t mod, int type, void *data)
{
 int error = 0;
 static int loaded = 0;

 switch (type) {
 case 129:
  if (loaded)
   return (0);
  newnfs_portinit();
  mtx_init(&ncl_iod_mutex, "ncl_iod_mutex", ((void*)0), MTX_DEF);
  nfscl_init();
  NFSD_LOCK();
  nfsrvd_cbinit(0);
  NFSD_UNLOCK();
  ncl_call_invalcaches = ncl_invalcaches;
  nfsd_call_nfscl = nfssvc_nfscl;
  loaded = 1;
  break;

 case 128:
  if (nfs_numnfscbd != 0) {
   error = EBUSY;
   break;
  }
 default:
  error = EOPNOTSUPP;
  break;
 }
 return error;
}
