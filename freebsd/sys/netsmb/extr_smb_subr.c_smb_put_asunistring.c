
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct mbchain {int dummy; } ;
struct smb_rq {TYPE_1__* sr_vc; struct mbchain sr_rq; } ;
struct iconv_drv {int dummy; } ;
struct TYPE_2__ {struct iconv_drv* vc_toserver; } ;


 int iconv_convmem (struct iconv_drv*,int *,int ,int) ;
 int mb_put_uint16le (struct mbchain*,int ) ;

int
smb_put_asunistring(struct smb_rq *rqp, const char *src)
{
 struct mbchain *mbp = &rqp->sr_rq;
 struct iconv_drv *dp = rqp->sr_vc->vc_toserver;
 u_char c;
 int error;

 while (*src) {
  iconv_convmem(dp, &c, src++, 1);
  error = mb_put_uint16le(mbp, c);
  if (error)
   return error;
 }
 return mb_put_uint16le(mbp, 0);
}
