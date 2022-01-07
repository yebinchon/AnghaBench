
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* req_dataseg; int * req_cdb; int req_seg_count; int req_time; int req_flags; int req_cdblen; int req_target; int req_lun_trn; int req_handle; int req_header; } ;
typedef TYPE_2__ ispreq_t ;
struct TYPE_5__ {int ds_count; int ds_base; } ;


 int ASIZE (int *) ;
 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 scalar_t__ ISP_IS_SBUS (int *) ;
 int ISP_RQDSEG ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_request(ispsoftc_t *isp, ispreq_t *rqsrc, ispreq_t *rqdst)
{
 int i;
 isp_put_hdr(isp, &rqsrc->req_header, &rqdst->req_header);
 ISP_IOXPUT_32(isp, rqsrc->req_handle, &rqdst->req_handle);
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, rqsrc->req_lun_trn, &rqdst->req_target);
  ISP_IOXPUT_8(isp, rqsrc->req_target, &rqdst->req_lun_trn);
 } else {
  ISP_IOXPUT_8(isp, rqsrc->req_lun_trn, &rqdst->req_lun_trn);
  ISP_IOXPUT_8(isp, rqsrc->req_target, &rqdst->req_target);
 }
 ISP_IOXPUT_16(isp, rqsrc->req_cdblen, &rqdst->req_cdblen);
 ISP_IOXPUT_16(isp, rqsrc->req_flags, &rqdst->req_flags);
 ISP_IOXPUT_16(isp, rqsrc->req_time, &rqdst->req_time);
 ISP_IOXPUT_16(isp, rqsrc->req_seg_count, &rqdst->req_seg_count);
 for (i = 0; i < ASIZE(rqsrc->req_cdb); i++) {
  ISP_IOXPUT_8(isp, rqsrc->req_cdb[i], &rqdst->req_cdb[i]);
 }
 for (i = 0; i < ISP_RQDSEG; i++) {
  ISP_IOXPUT_32(isp, rqsrc->req_dataseg[i].ds_base, &rqdst->req_dataseg[i].ds_base);
  ISP_IOXPUT_32(isp, rqsrc->req_dataseg[i].ds_count, &rqdst->req_dataseg[i].ds_count);
 }
}
