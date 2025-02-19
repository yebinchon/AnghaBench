
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int NFSERR_BADHANDLE ;
 int NFSERR_DELEGREVOKED ;
 int NFSERR_IO ;
 int NFSERR_OK ;
 int NFSERR_REMOTE ;
 int* nfsrv_v2errmap ;

__attribute__((used)) static u_int32_t
nfsrv_isannfserr(u_int32_t errval)
{

 if (errval == NFSERR_OK)
  return (errval);
 if (errval >= NFSERR_BADHANDLE && errval <= NFSERR_DELEGREVOKED)
  return (errval);
 if (errval > 0 && errval <= NFSERR_REMOTE)
  return (nfsrv_v2errmap[errval - 1]);
 return (NFSERR_IO);
}
