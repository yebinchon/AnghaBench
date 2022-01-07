
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc {struct iconv_drv* vc_toserver; } ;
struct mbchain {struct iconv_drv* mb_udata; int mb_copy; } ;
struct iconv_drv {int dummy; } ;


 int MB_MCUSTOM ;
 int MB_MSYSTEM ;
 scalar_t__ SMB_UNICODE_STRINGS (struct smb_vc*) ;
 int mb_put_mem (struct mbchain*,char const*,size_t,int ) ;
 int mb_put_padbyte (struct mbchain*) ;
 int smb_copy_iconv ;

int
smb_put_dmem(struct mbchain *mbp, struct smb_vc *vcp, const char *src,
 size_t size, int caseopt)
{
 struct iconv_drv *dp = vcp->vc_toserver;

 if (size == 0)
  return 0;
 if (dp == ((void*)0)) {
  return mb_put_mem(mbp, src, size, MB_MSYSTEM);
 }
 mbp->mb_copy = smb_copy_iconv;
 mbp->mb_udata = dp;
 if (SMB_UNICODE_STRINGS(vcp))
  mb_put_padbyte(mbp);
 return mb_put_mem(mbp, src, size, MB_MCUSTOM);
}
