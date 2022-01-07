
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ispsoftc_t ;
struct TYPE_4__ {scalar_t__ req_rsp_sense; int req_response_len; int req_sense_len; int req_fcp_residual; int req_scsi_status; int req_retry_delay; int req_state_flags; int req_reserved0; int req_resid; int req_oxid; int req_completion_status; int req_handle; int req_header; } ;
typedef TYPE_1__ isp24xx_statusreq_t ;


 int ASIZE (scalar_t__) ;
 int ISP_IOXGET_16 (int *,int *,int ) ;
 int ISP_IOXGET_32 (int *,int *,int ) ;
 int ISP_SWAP32 (int *,int ) ;
 int isp_get_hdr (int *,int *,int *) ;

void
isp_get_24xx_response(ispsoftc_t *isp, isp24xx_statusreq_t *src, isp24xx_statusreq_t *dst)
{
 int i;
 uint32_t *s, *d;

 isp_get_hdr(isp, &src->req_header, &dst->req_header);
 ISP_IOXGET_32(isp, &src->req_handle, dst->req_handle);
 ISP_IOXGET_16(isp, &src->req_completion_status, dst->req_completion_status);
 ISP_IOXGET_16(isp, &src->req_oxid, dst->req_oxid);
 ISP_IOXGET_32(isp, &src->req_resid, dst->req_resid);
 ISP_IOXGET_16(isp, &src->req_reserved0, dst->req_reserved0);
 ISP_IOXGET_16(isp, &src->req_state_flags, dst->req_state_flags);
 ISP_IOXGET_16(isp, &src->req_retry_delay, dst->req_retry_delay);
 ISP_IOXGET_16(isp, &src->req_scsi_status, dst->req_scsi_status);
 ISP_IOXGET_32(isp, &src->req_fcp_residual, dst->req_fcp_residual);
 ISP_IOXGET_32(isp, &src->req_sense_len, dst->req_sense_len);
 ISP_IOXGET_32(isp, &src->req_response_len, dst->req_response_len);
 s = (uint32_t *)src->req_rsp_sense;
 d = (uint32_t *)dst->req_rsp_sense;
 for (i = 0; i < (ASIZE(src->req_rsp_sense) >> 2); i++) {
  d[i] = ISP_SWAP32(isp, s[i]);
 }
}
