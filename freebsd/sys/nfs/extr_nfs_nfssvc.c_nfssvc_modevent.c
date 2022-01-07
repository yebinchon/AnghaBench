
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;


 int SY_THR_STATIC_KLD ;
 int * nfsd_call_nfscl ;
 int * nfsd_call_nfscommon ;
 int * nfsd_call_nfsd ;
 int * nfsd_call_nfsserver ;
 int nfssvc_syscalls ;
 int syscall_helper_register (int ,int ) ;
 int syscall_helper_unregister (int ) ;

__attribute__((used)) static int
nfssvc_modevent(module_t mod, int type, void *data)
{
 int error = 0;

 switch (type) {
 case 129:
  error = syscall_helper_register(nfssvc_syscalls,
      SY_THR_STATIC_KLD);
  break;

 case 128:
  if (nfsd_call_nfsserver != ((void*)0) || nfsd_call_nfscommon != ((void*)0)
      || nfsd_call_nfscl != ((void*)0) || nfsd_call_nfsd != ((void*)0)) {
   error = EBUSY;
   break;
  }
  syscall_helper_unregister(nfssvc_syscalls);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return error;
}
