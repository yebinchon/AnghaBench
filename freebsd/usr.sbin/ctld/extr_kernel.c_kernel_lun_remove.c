
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lun {int l_ctl_lun; int l_backend; } ;
struct TYPE_3__ {int lun_id; } ;
struct TYPE_4__ {TYPE_1__ rm; } ;
struct ctl_lun_req {int status; int error_str; TYPE_2__ reqdata; int reqtype; int backend; } ;
typedef int req ;


 int CTL_LUNREQ_RM ;


 int CTL_LUN_REQ ;

 int bzero (struct ctl_lun_req*,int) ;
 int ctl_fd ;
 int ioctl (int ,int ,struct ctl_lun_req*) ;
 int log_warn (char*) ;
 int log_warnx (char*,int) ;
 int strlcpy (int ,int ,int) ;

int
kernel_lun_remove(struct lun *lun)
{
 struct ctl_lun_req req;

 bzero(&req, sizeof(req));

 strlcpy(req.backend, lun->l_backend, sizeof(req.backend));
 req.reqtype = CTL_LUNREQ_RM;

 req.reqdata.rm.lun_id = lun->l_ctl_lun;

 if (ioctl(ctl_fd, CTL_LUN_REQ, &req) == -1) {
  log_warn("error issuing CTL_LUN_REQ ioctl");
  return (1);
 }

 switch (req.status) {
 case 130:
  log_warnx("LUN removal error: %s", req.error_str);
  return (1);
 case 128:
  log_warnx("LUN removal warning: %s", req.error_str);
  break;
 case 129:
  break;
 default:
  log_warnx("unknown LUN removal status: %d", req.status);
  return (1);
 }

 return (0);
}
