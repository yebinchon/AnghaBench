
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {scalar_t__ cr_uid; } ;
struct smb_share {scalar_t__ ss_uid; int ss_mode; int ss_grp; } ;
struct smb_cred {struct ucred* scr_cred; } ;
typedef int mode_t ;


 int EACCES ;
 int groupmember (int ,struct ucred*) ;
 scalar_t__ smb_suser (struct ucred*) ;

int
smb_share_access(struct smb_share *ssp, struct smb_cred *scred, mode_t mode)
{
 struct ucred *cred = scred->scr_cred;

 if (smb_suser(cred) == 0 || cred->cr_uid == ssp->ss_uid)
  return 0;
 mode >>= 3;
 if (!groupmember(ssp->ss_grp, cred))
  mode >>= 3;
 return (ssp->ss_mode & mode) == mode ? 0 : EACCES;
}
