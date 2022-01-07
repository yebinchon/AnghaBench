
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctl_iscsi_limits_params {int max_recv_data_segment_length; int max_send_data_segment_length; int max_burst_length; int first_burst_length; int offload; } ;
struct TYPE_2__ {int limits; } ;
struct ctl_iscsi {scalar_t__ status; int error_str; TYPE_1__ data; int type; } ;
typedef int req ;


 int CTL_ISCSI ;
 int CTL_ISCSI_LIMITS ;
 scalar_t__ CTL_ISCSI_OK ;
 int bzero (struct ctl_iscsi*,int) ;
 int ctl_fd ;
 int ioctl (int ,int ,struct ctl_iscsi*) ;
 int log_debugx (char*,...) ;
 int log_err (int,char*) ;
 int log_errx (int,char*,int ) ;
 int strlcpy (int ,char const*,int) ;

void
kernel_limits(const char *offload, int *max_recv_dsl, int *max_send_dsl,
    int *max_burst_length, int *first_burst_length)
{
 struct ctl_iscsi req;
 struct ctl_iscsi_limits_params *cilp;

 bzero(&req, sizeof(req));

 req.type = CTL_ISCSI_LIMITS;
 cilp = (struct ctl_iscsi_limits_params *)&(req.data.limits);
 if (offload != ((void*)0)) {
  strlcpy(cilp->offload, offload, sizeof(cilp->offload));
 }

 if (ioctl(ctl_fd, CTL_ISCSI, &req) == -1) {
  log_err(1, "error issuing CTL_ISCSI ioctl; "
      "dropping connection");
 }

 if (req.status != CTL_ISCSI_OK) {
  log_errx(1, "error returned from CTL iSCSI limits request: "
      "%s; dropping connection", req.error_str);
 }

 if (cilp->max_recv_data_segment_length != 0) {
  *max_recv_dsl = cilp->max_recv_data_segment_length;
  *max_send_dsl = cilp->max_recv_data_segment_length;
 }
 if (cilp->max_send_data_segment_length != 0)
  *max_send_dsl = cilp->max_send_data_segment_length;
 if (cilp->max_burst_length != 0)
  *max_burst_length = cilp->max_burst_length;
 if (cilp->first_burst_length != 0)
  *first_burst_length = cilp->first_burst_length;
 if (*max_burst_length < *first_burst_length)
  *first_burst_length = *max_burst_length;

 if (offload != ((void*)0)) {
  log_debugx("Kernel limits for offload \"%s\" are "
      "MaxRecvDataSegment=%d, max_send_dsl=%d, "
      "MaxBurstLength=%d, FirstBurstLength=%d",
      offload, *max_recv_dsl, *max_send_dsl, *max_burst_length,
      *first_burst_length);
 } else {
  log_debugx("Kernel limits are "
      "MaxRecvDataSegment=%d, max_send_dsl=%d, "
      "MaxBurstLength=%d, FirstBurstLength=%d",
      *max_recv_dsl, *max_send_dsl, *max_burst_length,
      *first_burst_length);
 }
}
