
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * req_sense_data; int * req_response; int req_resid; int req_sense_len; int req_time; int req_status_flags; int req_state_flags; int req_completion_status; int req_scsi_status; int req_handle; int req_header; } ;
typedef TYPE_1__ ispstatusreq_t ;
typedef int ispsoftc_t ;


 int ISP_IOXGET_16 (int *,int *,int ) ;
 int ISP_IOXGET_32 (int *,int *,int ) ;
 int ISP_IOXGET_8 (int *,int *,int ) ;
 int isp_get_hdr (int *,int *,int *) ;

void
isp_get_response(ispsoftc_t *isp, ispstatusreq_t *src, ispstatusreq_t *dst)
{
 int i;
 isp_get_hdr(isp, &src->req_header, &dst->req_header);
 ISP_IOXGET_32(isp, &src->req_handle, dst->req_handle);
 ISP_IOXGET_16(isp, &src->req_scsi_status, dst->req_scsi_status);
 ISP_IOXGET_16(isp, &src->req_completion_status, dst->req_completion_status);
 ISP_IOXGET_16(isp, &src->req_state_flags, dst->req_state_flags);
 ISP_IOXGET_16(isp, &src->req_status_flags, dst->req_status_flags);
 ISP_IOXGET_16(isp, &src->req_time, dst->req_time);
 ISP_IOXGET_16(isp, &src->req_sense_len, dst->req_sense_len);
 ISP_IOXGET_32(isp, &src->req_resid, dst->req_resid);
 for (i = 0; i < sizeof (src->req_response); i++) {
  ISP_IOXGET_8(isp, &src->req_response[i], dst->req_response[i]);
 }
 for (i = 0; i < sizeof (src->req_sense_data); i++) {
  ISP_IOXGET_8(isp, &src->req_sense_data[i], dst->req_sense_data[i]);
 }
}
