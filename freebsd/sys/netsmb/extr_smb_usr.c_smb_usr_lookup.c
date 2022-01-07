
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_lookup {scalar_t__ ioc_level; int ioc_flags; int ioc_sh; int ioc_ssn; } ;
struct smb_vcspec {struct smb_share* ssp; int flags; } ;
struct smb_vc {int dummy; } ;
struct smb_sharespec {int dummy; } ;
struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;


 int EINVAL ;
 int SMBLK_CREATE ;
 scalar_t__ SMBL_SHARE ;
 scalar_t__ SMBL_VC ;
 int SMBV_CREATE ;
 int smb_sm_lookup (struct smb_vcspec*,struct smb_sharespec*,struct smb_cred*,struct smb_vc**) ;
 int smb_usr_share2spec (int *,struct smb_sharespec*) ;
 int smb_usr_vc2spec (int *,struct smb_vcspec*) ;
 int smb_usr_vcspec_free (struct smb_vcspec*) ;

int
smb_usr_lookup(struct smbioc_lookup *dp, struct smb_cred *scred,
 struct smb_vc **vcpp, struct smb_share **sspp)
{
 struct smb_vc *vcp = ((void*)0);
 struct smb_vcspec vspec;
 struct smb_sharespec sspec, *sspecp = ((void*)0);
 int error;

 if (dp->ioc_level < SMBL_VC || dp->ioc_level > SMBL_SHARE)
  return EINVAL;
 error = smb_usr_vc2spec(&dp->ioc_ssn, &vspec);
 if (error)
  return error;
 if (dp->ioc_flags & SMBLK_CREATE)
  vspec.flags |= SMBV_CREATE;

 if (dp->ioc_level >= SMBL_SHARE) {
  error = smb_usr_share2spec(&dp->ioc_sh, &sspec);
  if (error)
   goto out;
  sspecp = &sspec;
 }
 error = smb_sm_lookup(&vspec, sspecp, scred, &vcp);
 if (error == 0) {
  *vcpp = vcp;
  *sspp = vspec.ssp;
 }
out:
 smb_usr_vcspec_free(&vspec);
 return error;
}
