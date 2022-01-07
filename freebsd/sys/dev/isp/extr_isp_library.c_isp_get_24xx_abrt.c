
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int * abrt_reserved1; int abrt_vpidx; int abrt_tidhi; int abrt_tidlo; int * abrt_reserved; int abrt_queue_number; int abrt_cmd_handle; int abrt_options; int abrt_nphdl; int abrt_handle; int abrt_header; } ;
typedef TYPE_1__ isp24xx_abrt_t ;


 int ASIZE (int *) ;
 int ISP_IOXGET_16 (int *,int *,int ) ;
 int ISP_IOXGET_32 (int *,int *,int ) ;
 int ISP_IOXGET_8 (int *,int *,int ) ;
 int isp_get_hdr (int *,int *,int *) ;

void
isp_get_24xx_abrt(ispsoftc_t *isp, isp24xx_abrt_t *src, isp24xx_abrt_t *dst)
{
 int i;
 isp_get_hdr(isp, &src->abrt_header, &dst->abrt_header);
 ISP_IOXGET_32(isp, &src->abrt_handle, dst->abrt_handle);
 ISP_IOXGET_16(isp, &src->abrt_nphdl, dst->abrt_nphdl);
 ISP_IOXGET_16(isp, &src->abrt_options, dst->abrt_options);
 ISP_IOXGET_32(isp, &src->abrt_cmd_handle, dst->abrt_cmd_handle);
 ISP_IOXGET_16(isp, &src->abrt_queue_number, dst->abrt_queue_number);
 for (i = 0; i < ASIZE(src->abrt_reserved); i++) {
  ISP_IOXGET_8(isp, &src->abrt_reserved[i], dst->abrt_reserved[i]);
 }
 ISP_IOXGET_16(isp, &src->abrt_tidlo, dst->abrt_tidlo);
 ISP_IOXGET_8(isp, &src->abrt_tidhi, dst->abrt_tidhi);
 ISP_IOXGET_8(isp, &src->abrt_vpidx, dst->abrt_vpidx);
 for (i = 0; i < ASIZE(src->abrt_reserved1); i++) {
  ISP_IOXGET_8(isp, &src->abrt_reserved1[i], dst->abrt_reserved1[i]);
 }
}
