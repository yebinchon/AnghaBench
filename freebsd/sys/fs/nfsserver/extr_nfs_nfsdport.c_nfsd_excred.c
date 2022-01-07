
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ucred {scalar_t__ cr_uid; int cr_groups; int cr_ngroups; int cr_gid; } ;
struct nfsrv_descript {int nd_flag; scalar_t__ nd_procnum; TYPE_1__* nd_cred; } ;
struct nfsexstuff {int nes_exflag; } ;
struct TYPE_4__ {scalar_t__ cr_uid; int cr_gid; } ;


 int AUTH_TOOWEAK ;
 int MNT_EXPORTANON ;
 int ND_AUTHNONE ;
 int ND_GSS ;
 int ND_NFSV4 ;
 int NFSERR_AUTHERR ;
 int NFSERR_PROGNOTV4 ;
 int NFSERR_WRONGSEC ;
 int NFSEXITCODE2 (int,struct nfsrv_descript*) ;
 scalar_t__ NFSPROC_FSINFO ;
 scalar_t__ NFSV4OP_SECINFO ;
 scalar_t__ NFSVNO_EXPORTANON (struct nfsexstuff*) ;
 scalar_t__ NFSVNO_EXPORTED (struct nfsexstuff*) ;
 scalar_t__ NFSVNO_EXV4ONLY (struct nfsexstuff*) ;
 int crsetgroups (TYPE_1__*,int ,int ) ;
 TYPE_1__* nfsrv_getgrpscred (TYPE_1__*) ;
 scalar_t__ nfsvno_testexp (struct nfsrv_descript*,struct nfsexstuff*) ;

int
nfsd_excred(struct nfsrv_descript *nd, struct nfsexstuff *exp,
    struct ucred *credanon)
{
 int error = 0;




 if (nd->nd_flag & ND_GSS)
  exp->nes_exflag &= ~MNT_EXPORTANON;







 if (nfsvno_testexp(nd, exp) &&
     nd->nd_procnum != NFSV4OP_SECINFO &&
     nd->nd_procnum != NFSPROC_FSINFO) {
  if (nd->nd_flag & ND_NFSV4)
   error = NFSERR_WRONGSEC;
  else
   error = (NFSERR_AUTHERR | AUTH_TOOWEAK);
  goto out;
 }




 if (NFSVNO_EXV4ONLY(exp) && !(nd->nd_flag & ND_NFSV4)) {
  error = NFSERR_PROGNOTV4;
  goto out;
 }







 if (NFSVNO_EXPORTED(exp)) {
  if (((nd->nd_flag & ND_GSS) == 0 && nd->nd_cred->cr_uid == 0) ||
       NFSVNO_EXPORTANON(exp) ||
       (nd->nd_flag & ND_AUTHNONE) != 0) {
   nd->nd_cred->cr_uid = credanon->cr_uid;
   nd->nd_cred->cr_gid = credanon->cr_gid;
   crsetgroups(nd->nd_cred, credanon->cr_ngroups,
       credanon->cr_groups);
  } else if ((nd->nd_flag & ND_GSS) == 0) {







   nd->nd_cred = nfsrv_getgrpscred(nd->nd_cred);
  }
 }

out:
 NFSEXITCODE2(error, nd);
 return (error);
}
