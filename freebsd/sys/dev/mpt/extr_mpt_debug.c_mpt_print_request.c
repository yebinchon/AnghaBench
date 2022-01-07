
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Function; } ;
typedef int PTR_MSG_TARGET_ASSIST_REQUEST ;
typedef int MSG_TARGET_STATUS_SEND_REQUEST ;
typedef int MSG_SCSI_TASK_MGMT ;
typedef int MSG_SCSI_IO_REQUEST ;
typedef TYPE_1__ MSG_REQUEST_HEADER ;







 int mpt_print_request_hdr (TYPE_1__*) ;
 int mpt_print_scsi_io_request (int *) ;
 int mpt_print_scsi_target_assist_request (int ) ;
 int mpt_print_scsi_target_status_send_request (int *) ;
 int mpt_print_scsi_tmf_request (int *) ;

void
mpt_print_request(void *vreq)
{
 MSG_REQUEST_HEADER *req = vreq;

 switch (req->Function) {
 case 131:
 case 132:
  mpt_print_scsi_io_request((MSG_SCSI_IO_REQUEST *)req);
  break;
 case 130:
  mpt_print_scsi_tmf_request((MSG_SCSI_TASK_MGMT *)req);
  break;
 case 129:
  mpt_print_scsi_target_assist_request(
      (PTR_MSG_TARGET_ASSIST_REQUEST)req);
  break;
 case 128:
  mpt_print_scsi_target_status_send_request(
      (MSG_TARGET_STATUS_SEND_REQUEST *)req);
  break;
 default:
  mpt_print_request_hdr(req);
  break;
 }
}
