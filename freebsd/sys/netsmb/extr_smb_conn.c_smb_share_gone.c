
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;
struct smb_connobj {int dummy; } ;


 struct smb_share* CPTOSS (struct smb_connobj*) ;
 int smb_smb_treedisconnect (struct smb_share*,struct smb_cred*) ;

__attribute__((used)) static void
smb_share_gone(struct smb_connobj *cp, struct smb_cred *scred)
{
 struct smb_share *ssp = CPTOSS(cp);

 smb_smb_treedisconnect(ssp, scred);
}
