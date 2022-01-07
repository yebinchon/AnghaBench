
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {char const* vc_pass; } ;


 char const* smb_emptypass ;

const char *
smb_vc_getpass(struct smb_vc *vcp)
{
 if (vcp->vc_pass)
  return vcp->vc_pass;
 return smb_emptypass;
}
