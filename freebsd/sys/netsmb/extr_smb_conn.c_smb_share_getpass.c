
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {char const* vc_pass; } ;
struct smb_share {char const* ss_pass; } ;


 struct smb_vc* SSTOVC (struct smb_share*) ;
 char const* smb_emptypass ;

const char*
smb_share_getpass(struct smb_share *ssp)
{
 struct smb_vc *vcp;

 if (ssp->ss_pass)
  return ssp->ss_pass;
 vcp = SSTOVC(ssp);
 if (vcp->vc_pass)
  return vcp->vc_pass;
 return smb_emptypass;
}
