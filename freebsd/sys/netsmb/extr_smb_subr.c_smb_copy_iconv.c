
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbchain {scalar_t__ mb_udata; } ;
struct iconv_drv {int dummy; } ;
typedef int caddr_t ;
typedef int c_caddr_t ;


 int iconv_conv (struct iconv_drv*,int *,size_t*,int *,size_t*) ;

__attribute__((used)) static int
smb_copy_iconv(struct mbchain *mbp, c_caddr_t src, caddr_t dst,
    size_t *srclen, size_t *dstlen)
{
 int error;
 size_t inlen = *srclen, outlen = *dstlen;

 error = iconv_conv((struct iconv_drv*)mbp->mb_udata, &src, &inlen,
     &dst, &outlen);
 if (inlen != *srclen || outlen != *dstlen) {
  *srclen -= inlen;
  *dstlen -= outlen;
  return 0;
 } else
  return error;
}
