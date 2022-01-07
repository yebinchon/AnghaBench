
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {int dummy; } ;
struct smb_cred {int dummy; } ;


 int SSTOCP (struct smb_share*) ;
 int smb_co_put (int ,struct smb_cred*) ;

void
smb_share_put(struct smb_share *ssp, struct smb_cred *scred)
{

 smb_co_put(SSTOCP(ssp), scred);
}
