
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int t_name; } ;
struct portal_group {int pg_tag; } ;
struct port {int p_ctl_port; scalar_t__ p_ioctl_port; struct portal_group* p_portal_group; struct target* p_target; } ;
struct ctl_req {scalar_t__ status; scalar_t__ error_str; void* lun; void* plun; int port; int * args_nvl; int * args; int args_len; int reqtype; int driver; int targ_port; } ;
struct ctl_port_entry {scalar_t__ status; scalar_t__ error_str; void* lun; void* plun; int port; int * args_nvl; int * args; int args_len; int reqtype; int driver; int targ_port; } ;
struct ctl_lun_map {scalar_t__ status; scalar_t__ error_str; void* lun; void* plun; int port; int * args_nvl; int * args; int args_len; int reqtype; int driver; int targ_port; } ;
typedef int req ;
typedef int entry ;


 int CTL_DISABLE_PORT ;
 scalar_t__ CTL_LUN_ERROR ;
 int CTL_LUN_MAP ;
 scalar_t__ CTL_LUN_OK ;
 int CTL_PORT_REQ ;
 int CTL_REQ_REMOVE ;
 void* UINT32_MAX ;
 int bzero (struct ctl_req*,int) ;
 int ctl_fd ;
 int ioctl (int ,int ,struct ctl_req*) ;
 int log_err (int,char*) ;
 int log_warn (char*) ;
 int log_warnx (char*,scalar_t__) ;
 int nvlist_add_string (int *,char*,int ) ;
 int nvlist_add_stringf (int *,char*,char*,int ) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int * nvlist_pack (int *,int *) ;
 int strlcpy (int ,char*,int) ;

int
kernel_port_remove(struct port *port)
{
 struct ctl_port_entry entry;
 struct ctl_lun_map lm;
 struct ctl_req req;
 struct target *targ = port->p_target;
 struct portal_group *pg = port->p_portal_group;
 int error;


 bzero(&entry, sizeof(entry));
 entry.targ_port = port->p_ctl_port;
 error = ioctl(ctl_fd, CTL_DISABLE_PORT, &entry);
 if (error != 0) {
  log_warn("CTL_DISABLE_PORT ioctl failed");
  return (-1);
 }


 if (port->p_portal_group || port->p_ioctl_port) {
  bzero(&req, sizeof(req));
  strlcpy(req.driver, port->p_ioctl_port ? "ioctl" : "iscsi",
      sizeof(req.driver));
  req.reqtype = CTL_REQ_REMOVE;
  req.args_nvl = nvlist_create(0);
  if (req.args_nvl == ((void*)0))
   log_err(1, "nvlist_create");

  if (port->p_ioctl_port)
   nvlist_add_stringf(req.args_nvl, "port_id", "%d",
       port->p_ctl_port);
  else {
   nvlist_add_string(req.args_nvl, "cfiscsi_target",
       targ->t_name);
   nvlist_add_stringf(req.args_nvl,
       "cfiscsi_portal_group_tag", "%u", pg->pg_tag);
  }

  req.args = nvlist_pack(req.args_nvl, &req.args_len);
  if (req.args == ((void*)0)) {
   log_warn("error packing nvlist");
   return (1);
  }

  error = ioctl(ctl_fd, CTL_PORT_REQ, &req);
  nvlist_destroy(req.args_nvl);

  if (error != 0) {
   log_warn("error issuing CTL_PORT_REQ ioctl");
   return (1);
  }
  if (req.status == CTL_LUN_ERROR) {
   log_warnx("error returned from port removal request: %s",
       req.error_str);
   return (1);
  }
  if (req.status != CTL_LUN_OK) {
   log_warnx("unknown port removal request status %d",
       req.status);
   return (1);
  }
 } else {

  lm.port = port->p_ctl_port;
  lm.plun = UINT32_MAX;
  lm.lun = UINT32_MAX;
  error = ioctl(ctl_fd, CTL_LUN_MAP, &lm);
  if (error != 0)
   log_warn("CTL_LUN_MAP ioctl failed");
 }
 return (0);
}
