
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int * mrk_reserved3; int * mrk_lun; int mrk_reserved2; int mrk_vphdl; int mrk_reserved1; int mrk_reserved0; int mrk_modifier; int mrk_nphdl; int mrk_handle; int mrk_header; } ;
typedef TYPE_1__ isp_marker_24xx_t ;


 int ASIZE (int *) ;
 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_marker_24xx(ispsoftc_t *isp, isp_marker_24xx_t *src, isp_marker_24xx_t *dst)
{
 int i;
 isp_put_hdr(isp, &src->mrk_header, &dst->mrk_header);
 ISP_IOXPUT_32(isp, src->mrk_handle, &dst->mrk_handle);
 ISP_IOXPUT_16(isp, src->mrk_nphdl, &dst->mrk_nphdl);
 ISP_IOXPUT_8(isp, src->mrk_modifier, &dst->mrk_modifier);
 ISP_IOXPUT_8(isp, src->mrk_reserved0, &dst->mrk_reserved0);
 ISP_IOXPUT_8(isp, src->mrk_reserved1, &dst->mrk_reserved1);
 ISP_IOXPUT_8(isp, src->mrk_vphdl, &dst->mrk_vphdl);
 ISP_IOXPUT_8(isp, src->mrk_reserved2, &dst->mrk_reserved2);
 for (i = 0; i < ASIZE(src->mrk_lun); i++) {
  ISP_IOXPUT_8(isp, src->mrk_lun[i], &dst->mrk_lun[i]);
 }
 for (i = 0; i < ASIZE(src->mrk_reserved3); i++) {
  ISP_IOXPUT_8(isp, src->mrk_reserved3[i], &dst->mrk_reserved3[i]);
 }
}
