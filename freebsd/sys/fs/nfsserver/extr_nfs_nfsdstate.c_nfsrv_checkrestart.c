
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {scalar_t__* other; } ;
typedef TYPE_1__ nfsv4stateid_t ;
struct TYPE_6__ {scalar_t__* lval; } ;
typedef TYPE_2__ nfsquad_t ;


 int NFSERR_STALECLIENTID ;
 int NFSERR_STALESTATEID ;
 int NFSEXITCODE (int) ;
 int NFSLCK_CHECK ;
 int NFSLCK_DELEGPURGE ;
 int NFSLCK_OPEN ;
 int NFSLCK_RELEASE ;
 int NFSLCK_TEST ;
 int NFSLOCKSTATE () ;
 int NFSUNLOCKSTATE () ;
 int nfsrv_checkgrace (int *,int *,int) ;
 scalar_t__ nfsrvboottime ;

__attribute__((used)) static int
nfsrv_checkrestart(nfsquad_t clientid, u_int32_t flags,
    nfsv4stateid_t *stateidp, int specialid)
{
 int ret = 0;





 if (flags &
     (NFSLCK_OPEN | NFSLCK_TEST | NFSLCK_RELEASE | NFSLCK_DELEGPURGE)) {
  if (clientid.lval[0] != nfsrvboottime) {
   ret = NFSERR_STALECLIENTID;
   goto out;
  }
 } else if (stateidp->other[0] != nfsrvboottime &&
  specialid == 0) {
  ret = NFSERR_STALESTATEID;
  goto out;
 }






 if (!(flags & (NFSLCK_CHECK | NFSLCK_TEST)))
  goto out;

 NFSLOCKSTATE();
 ret = nfsrv_checkgrace(((void*)0), ((void*)0), flags);
 NFSUNLOCKSTATE();

out:
 NFSEXITCODE(ret);
 return (ret);
}
