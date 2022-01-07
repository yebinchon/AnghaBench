
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ispsoftc_t ;
struct TYPE_4__ {int * tmf_reserved2; int tmf_vpidx; int tmf_tidhi; int tmf_tidlo; int * tmf_reserved1; int tmf_flags; int * tmf_lun; int * tmf_reserved0; int tmf_timeout; int tmf_delay; int tmf_nphdl; int tmf_handle; int tmf_header; } ;
typedef TYPE_1__ isp24xx_tmf_t ;


 int ASIZE (int *) ;
 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 int ISP_SWAP32 (int *,int ) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_24xx_tmf(ispsoftc_t *isp, isp24xx_tmf_t *src, isp24xx_tmf_t *dst)
{
 int i;
 uint32_t *a, *b;

 isp_put_hdr(isp, &src->tmf_header, &dst->tmf_header);
 ISP_IOXPUT_32(isp, src->tmf_handle, &dst->tmf_handle);
 ISP_IOXPUT_16(isp, src->tmf_nphdl, &dst->tmf_nphdl);
 ISP_IOXPUT_16(isp, src->tmf_delay, &dst->tmf_delay);
 ISP_IOXPUT_16(isp, src->tmf_timeout, &dst->tmf_timeout);
 for (i = 0; i < ASIZE(src->tmf_reserved0); i++) {
  ISP_IOXPUT_8(isp, src->tmf_reserved0[i], &dst->tmf_reserved0[i]);
 }
 a = (uint32_t *) src->tmf_lun;
 b = (uint32_t *) dst->tmf_lun;
 for (i = 0; i < (ASIZE(src->tmf_lun) >> 2); i++ ) {
  *b++ = ISP_SWAP32(isp, *a++);
 }
 ISP_IOXPUT_32(isp, src->tmf_flags, &dst->tmf_flags);
 for (i = 0; i < ASIZE(src->tmf_reserved1); i++) {
  ISP_IOXPUT_8(isp, src->tmf_reserved1[i], &dst->tmf_reserved1[i]);
 }
 ISP_IOXPUT_16(isp, src->tmf_tidlo, &dst->tmf_tidlo);
 ISP_IOXPUT_8(isp, src->tmf_tidhi, &dst->tmf_tidhi);
 ISP_IOXPUT_8(isp, src->tmf_vpidx, &dst->tmf_vpidx);
 for (i = 0; i < ASIZE(src->tmf_reserved2); i++) {
  ISP_IOXPUT_8(isp, src->tmf_reserved2[i], &dst->tmf_reserved2[i]);
 }
}
