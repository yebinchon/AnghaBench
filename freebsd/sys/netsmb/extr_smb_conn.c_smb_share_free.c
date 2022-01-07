
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share {int ss_stlock; int ss_pass; int ss_name; } ;
struct smb_connobj {int dummy; } ;


 struct smb_share* CPTOSS (struct smb_connobj*) ;
 int M_SMBCONN ;
 int SMB_STRFREE (int ) ;
 int SSTOCP (struct smb_share*) ;
 int free (struct smb_share*,int ) ;
 int smb_co_done (int ) ;
 int smb_sl_destroy (int *) ;

__attribute__((used)) static void
smb_share_free(struct smb_connobj *cp)
{
 struct smb_share *ssp = CPTOSS(cp);

 SMB_STRFREE(ssp->ss_name);
 SMB_STRFREE(ssp->ss_pass);
 smb_sl_destroy(&ssp->ss_stlock);
 smb_co_done(SSTOCP(ssp));
 free(ssp, M_SMBCONN);
}
