
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_uid; } ;
struct smb_vc {scalar_t__ vc_uid; int vc_mode; int vc_grp; } ;
struct smb_cred {struct ucred* scr_cred; } ;
typedef int mode_t ;


 int EACCES ;
 int groupmember (int ,struct ucred*) ;
 scalar_t__ smb_suser (struct ucred*) ;

int
smb_vc_access(struct smb_vc *vcp, struct smb_cred *scred, mode_t mode)
{
 struct ucred *cred = scred->scr_cred;

 if (smb_suser(cred) == 0 || cred->cr_uid == vcp->vc_uid)
  return 0;
 mode >>= 3;
 if (!groupmember(vcp->vc_grp, cred))
  mode >>= 3;
 return (vcp->vc_mode & mode) == mode ? 0 : EACCES;
}
