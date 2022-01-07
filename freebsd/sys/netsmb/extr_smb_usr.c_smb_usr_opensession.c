
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_ossn {int ioc_opt; } ;
struct smb_vcspec {int flags; } ;
struct smb_vc {int dummy; } ;
struct smb_cred {int dummy; } ;


 int SMBVOPT_CREATE ;
 int SMBV_CREATE ;
 int smb_sm_lookup (struct smb_vcspec*,int *,struct smb_cred*,struct smb_vc**) ;
 int smb_usr_vc2spec (struct smbioc_ossn*,struct smb_vcspec*) ;
 int smb_usr_vcspec_free (struct smb_vcspec*) ;

int
smb_usr_opensession(struct smbioc_ossn *dp, struct smb_cred *scred,
 struct smb_vc **vcpp)
{
 struct smb_vc *vcp = ((void*)0);
 struct smb_vcspec vspec;
 int error;

 error = smb_usr_vc2spec(dp, &vspec);
 if (error)
  return error;
 if (dp->ioc_opt & SMBVOPT_CREATE)
  vspec.flags |= SMBV_CREATE;

 error = smb_sm_lookup(&vspec, ((void*)0), scred, &vcp);
 smb_usr_vcspec_free(&vspec);
 return error;
}
