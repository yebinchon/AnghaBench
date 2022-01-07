
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* req_dataseg; int req_totalcnt; int * req_cdb; int req_seg_count; int req_time; int req_reserved; int req_crn; int req_flags; int req_scclun; int req_target; int req_lun_trn; int req_handle; int req_header; } ;
typedef TYPE_2__ ispreqt3_t ;
struct TYPE_5__ {int ds_count; int ds_basehi; int ds_base; } ;


 int ASIZE (int *) ;
 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 int ISP_RQDSEG_T3 ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_request_t3(ispsoftc_t *isp, ispreqt3_t *src, ispreqt3_t *dst)
{
 int i;
 isp_put_hdr(isp, &src->req_header, &dst->req_header);
 ISP_IOXPUT_32(isp, src->req_handle, &dst->req_handle);
 ISP_IOXPUT_8(isp, src->req_lun_trn, &dst->req_lun_trn);
 ISP_IOXPUT_8(isp, src->req_target, &dst->req_target);
 ISP_IOXPUT_16(isp, src->req_scclun, &dst->req_scclun);
 ISP_IOXPUT_16(isp, src->req_flags, &dst->req_flags);
 ISP_IOXPUT_8(isp, src->req_crn, &dst->req_crn);
 ISP_IOXPUT_8(isp, src->req_reserved, &dst->req_reserved);
 ISP_IOXPUT_16(isp, src->req_time, &dst->req_time);
 ISP_IOXPUT_16(isp, src->req_seg_count, &dst->req_seg_count);
 for (i = 0; i < ASIZE(src->req_cdb); i++) {
  ISP_IOXPUT_8(isp, src->req_cdb[i], &dst->req_cdb[i]);
 }
 ISP_IOXPUT_32(isp, src->req_totalcnt, &dst->req_totalcnt);
 for (i = 0; i < ISP_RQDSEG_T3; i++) {
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_base, &dst->req_dataseg[i].ds_base);
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_basehi, &dst->req_dataseg[i].ds_basehi);
  ISP_IOXPUT_32(isp, src->req_dataseg[i].ds_count, &dst->req_dataseg[i].ds_count);
 }
}
