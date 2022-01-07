
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int dummy; } ;
struct smb_cred {int dummy; } ;


 int VCTOCP (struct smb_vc*) ;
 int smb_co_rele (int ,struct smb_cred*) ;

void
smb_vc_rele(struct smb_vc *vcp, struct smb_cred *scred)
{
 smb_co_rele(VCTOCP(vcp), scred);
}
