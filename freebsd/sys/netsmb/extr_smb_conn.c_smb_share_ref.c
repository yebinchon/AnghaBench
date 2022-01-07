
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {int dummy; } ;


 int SSTOCP (struct smb_share*) ;
 int smb_co_ref (int ) ;

void
smb_share_ref(struct smb_share *ssp)
{
 smb_co_ref(SSTOCP(ssp));
}
