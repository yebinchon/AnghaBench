
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int * req_cdb; int req_seg_count; int req_time; int req_flags; int req_cdblen; int req_target; int req_lun_trn; int req_handle; int req_header; } ;
typedef TYPE_1__ ispextreq_t ;


 int ASIZE (int *) ;
 int ISP_IOXPUT_16 (int *,int ,int *) ;
 int ISP_IOXPUT_32 (int *,int ,int *) ;
 int ISP_IOXPUT_8 (int *,int ,int *) ;
 scalar_t__ ISP_IS_SBUS (int *) ;
 int isp_put_hdr (int *,int *,int *) ;

void
isp_put_extended_request(ispsoftc_t *isp, ispextreq_t *src, ispextreq_t *dst)
{
 int i;
 isp_put_hdr(isp, &src->req_header, &dst->req_header);
 ISP_IOXPUT_32(isp, src->req_handle, &dst->req_handle);
 if (ISP_IS_SBUS(isp)) {
  ISP_IOXPUT_8(isp, src->req_lun_trn, &dst->req_target);
  ISP_IOXPUT_8(isp, src->req_target, &dst->req_lun_trn);
 } else {
  ISP_IOXPUT_8(isp, src->req_lun_trn, &dst->req_lun_trn);
  ISP_IOXPUT_8(isp, src->req_target, &dst->req_target);
 }
 ISP_IOXPUT_16(isp, src->req_cdblen, &dst->req_cdblen);
 ISP_IOXPUT_16(isp, src->req_flags, &dst->req_flags);
 ISP_IOXPUT_16(isp, src->req_time, &dst->req_time);
 ISP_IOXPUT_16(isp, src->req_seg_count, &dst->req_seg_count);
 for (i = 0; i < ASIZE(src->req_cdb); i++) {
  ISP_IOXPUT_8(isp, src->req_cdb[i], &dst->req_cdb[i]);
 }
}
