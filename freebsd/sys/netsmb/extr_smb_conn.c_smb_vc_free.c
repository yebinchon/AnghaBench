
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {int vc_stlock; scalar_t__ vc_ucs_toserver; scalar_t__ vc_ucs_tolocal; scalar_t__ vc_cp_toserver; scalar_t__ vc_cp_tolocal; int * vc_toserver; int * vc_tolocal; scalar_t__ vc_toupper; scalar_t__ vc_tolower; struct smb_vc* vc_laddr; struct smb_vc* vc_paddr; struct smb_vc* vc_mackey; int vc_domain; int vc_pass; int vc_srvname; int vc_username; scalar_t__ vc_iod; } ;
struct smb_connobj {int dummy; } ;


 struct smb_vc* CPTOVC (struct smb_connobj*) ;
 int M_SMBCONN ;
 int M_SMBTEMP ;
 int M_SONAME ;
 int SMB_STRFREE (int ) ;
 int VCTOCP (struct smb_vc*) ;
 int free (struct smb_vc*,int ) ;
 int iconv_close (scalar_t__) ;
 int smb_co_done (int ) ;
 int smb_iod_destroy (scalar_t__) ;
 int smb_sl_destroy (int *) ;

__attribute__((used)) static void
smb_vc_free(struct smb_connobj *cp)
{
 struct smb_vc *vcp = CPTOVC(cp);

 if (vcp->vc_iod)
  smb_iod_destroy(vcp->vc_iod);
 SMB_STRFREE(vcp->vc_username);
 SMB_STRFREE(vcp->vc_srvname);
 SMB_STRFREE(vcp->vc_pass);
 SMB_STRFREE(vcp->vc_domain);
 if (vcp->vc_mackey)
  free(vcp->vc_mackey, M_SMBTEMP);
 if (vcp->vc_paddr)
  free(vcp->vc_paddr, M_SONAME);
 if (vcp->vc_laddr)
  free(vcp->vc_laddr, M_SONAME);
 if (vcp->vc_tolower)
  iconv_close(vcp->vc_tolower);
 if (vcp->vc_toupper)
  iconv_close(vcp->vc_toupper);
 if (vcp->vc_tolocal)
  vcp->vc_tolocal = ((void*)0);
 if (vcp->vc_toserver)
  vcp->vc_toserver = ((void*)0);
 if (vcp->vc_cp_tolocal)
  iconv_close(vcp->vc_cp_tolocal);
 if (vcp->vc_cp_toserver)
  iconv_close(vcp->vc_cp_toserver);
 if (vcp->vc_ucs_tolocal)
  iconv_close(vcp->vc_ucs_tolocal);
 if (vcp->vc_ucs_toserver)
  iconv_close(vcp->vc_ucs_toserver);
 smb_co_done(VCTOCP(vcp));
 smb_sl_destroy(&vcp->vc_stlock);
 free(vcp, M_SMBCONN);
}
