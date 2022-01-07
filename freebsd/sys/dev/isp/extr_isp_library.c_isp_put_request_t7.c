
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ispsoftc_t ;
struct TYPE_5__ {int ds_count; int ds_basehi; int ds_base; } ;
struct TYPE_6__ {TYPE_1__ req_dataseg; int req_vpidx; int req_tidhi; int req_tidlo; int req_dl; scalar_t__ req_cdb; int req_crn; int req_task_attribute; int req_task_management; int req_alen_datadir; scalar_t__ req_lun; int req_reserved; int req_seg_count; int req_time; int req_nphdl; int req_handle; int req_header; } ;
typedef TYPE_2__ ispreqt7_t ;


 int ASIZE (scalar_t__) ;
 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 void* ISP_SWAP32 (int *,int ) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_request_t7(ispsoftc_t *isp, ispreqt7_t *src, ispreqt7_t *dst)
{
 int i;
 uint32_t *a, *b;

 isp_put_hdr(isp, &src->req_header, &dst->req_header);
 ISP_IOXPUT_32(isp, src->req_handle, &dst->req_handle);
 ISP_IOXPUT_16(isp, src->req_nphdl, &dst->req_nphdl);
 ISP_IOXPUT_16(isp, src->req_time, &dst->req_time);
 ISP_IOXPUT_16(isp, src->req_seg_count, &dst->req_seg_count);
 ISP_IOXPUT_16(isp, src->req_reserved, &dst->req_reserved);
 a = (uint32_t *) src->req_lun;
 b = (uint32_t *) dst->req_lun;
 for (i = 0; i < (ASIZE(src->req_lun) >> 2); i++ ) {
  *b++ = ISP_SWAP32(isp, *a++);
 }
 ISP_IOXPUT_8(isp, src->req_alen_datadir, &dst->req_alen_datadir);
 ISP_IOXPUT_8(isp, src->req_task_management, &dst->req_task_management);
 ISP_IOXPUT_8(isp, src->req_task_attribute, &dst->req_task_attribute);
 ISP_IOXPUT_8(isp, src->req_crn, &dst->req_crn);
 a = (uint32_t *) src->req_cdb;
 b = (uint32_t *) dst->req_cdb;
 for (i = 0; i < (ASIZE(src->req_cdb) >> 2); i++) {
  *b++ = ISP_SWAP32(isp, *a++);
 }
 ISP_IOXPUT_32(isp, src->req_dl, &dst->req_dl);
 ISP_IOXPUT_16(isp, src->req_tidlo, &dst->req_tidlo);
 ISP_IOXPUT_8(isp, src->req_tidhi, &dst->req_tidhi);
 ISP_IOXPUT_8(isp, src->req_vpidx, &dst->req_vpidx);
 ISP_IOXPUT_32(isp, src->req_dataseg.ds_base, &dst->req_dataseg.ds_base);
 ISP_IOXPUT_32(isp, src->req_dataseg.ds_basehi, &dst->req_dataseg.ds_basehi);
 ISP_IOXPUT_32(isp, src->req_dataseg.ds_count, &dst->req_dataseg.ds_count);
}
