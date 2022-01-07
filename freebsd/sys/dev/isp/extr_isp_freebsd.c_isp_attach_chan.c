
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct isp_spi {int * atused; int * atpool; int atfree; int * ntpool; int ntfree; int waitq; struct cam_path* path; struct cam_sim* sim; } ;
struct isp_fc {int ready; int num_threads; int inject_lost_data_frame; int gone_device_time; int loop_down_limit; struct cam_sim* sim; struct cam_path* path; int kproc; int * atused; int * atpool; int atfree; int * ntpool; int ntfree; int waitq; int gtask; int gdt; TYPE_2__* isp; } ;
struct TYPE_19__ {int func_code; } ;
struct ccb_setasync {struct cam_sim* callback_arg; int callback; int event_enable; TYPE_4__ ccb_h; } ;
struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef int name ;
struct TYPE_16__ {int dev; } ;
struct TYPE_17__ {TYPE_1__ isp_osinfo; int isp_lock; int isp_dev; int isp_maxcmds; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_18__ {int isp_use_gft_id; int isp_use_gff_id; int isp_topo; int isp_loopstate; int isp_fwstate; int isp_linkstate; int isp_gbspeed; int isp_wwpn; int isp_wwnn; } ;
typedef TYPE_3__ fcparam ;


 int AC_LOST_DEVICE ;
 int ATPDPHASHSIZE ;
 int ATPDPSIZE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int FALSE ;
 TYPE_3__* FCPARAM (TYPE_2__*,int) ;
 struct isp_fc* ISP_FC_PC (TYPE_2__*,int) ;
 int ISP_LOCK (TYPE_2__*) ;
 struct isp_spi* ISP_SPI_PC (TYPE_2__*,int) ;
 int ISP_UNLOCK (TYPE_2__*) ;
 scalar_t__ IS_SCSI (TYPE_2__*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int OID_AUTO ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,TYPE_2__*,int,int ,char*,char*) ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int,int ,struct isp_fc*) ;
 int XPT_SASYNC_CB ;
 int callout_init_mtx (int *,int *,int ) ;
 struct cam_sim* cam_sim_alloc (int ,int ,char*,TYPE_2__*,int ,int *,int ,int ,struct cam_devq*) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 int device_get_nameunit (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int isp_action ;
 int isp_cam_async ;
 int isp_gdt_task ;
 int isp_kthread ;
 int isp_loop_changed (TYPE_2__*,int) ;
 int isp_poll ;
 int isp_role_sysctl ;
 scalar_t__ kproc_create (int ,struct isp_fc*,int *,int ,int ,char*,int ,int) ;
 int next ;
 int snprintf (char*,int,char*,int) ;
 int xpt_action (union ccb*) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (struct cam_sim*,int ,int) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_setup_ccb (TYPE_4__*,struct cam_path*,int) ;

__attribute__((used)) static int
isp_attach_chan(ispsoftc_t *isp, struct cam_devq *devq, int chan)
{
 struct ccb_setasync csa;
 struct cam_sim *sim;
 struct cam_path *path;




 sim = cam_sim_alloc(isp_action, isp_poll, "isp", isp,
     device_get_unit(isp->isp_dev), &isp->isp_lock,
     isp->isp_maxcmds, isp->isp_maxcmds, devq);
 if (sim == ((void*)0))
  return (ENOMEM);

 ISP_LOCK(isp);
 if (xpt_bus_register(sim, isp->isp_dev, chan) != CAM_SUCCESS) {
  ISP_UNLOCK(isp);
  cam_sim_free(sim, FALSE);
  return (EIO);
 }
 ISP_UNLOCK(isp);
 if (xpt_create_path(&path, ((void*)0), cam_sim_path(sim), CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  ISP_LOCK(isp);
  xpt_bus_deregister(cam_sim_path(sim));
  ISP_UNLOCK(isp);
  cam_sim_free(sim, FALSE);
  return (ENXIO);
 }
 xpt_setup_ccb(&csa.ccb_h, path, 5);
 csa.ccb_h.func_code = XPT_SASYNC_CB;
 csa.event_enable = AC_LOST_DEVICE;
 csa.callback = isp_cam_async;
 csa.callback_arg = sim;

 ISP_LOCK(isp);
 xpt_action((union ccb *)&csa);
 ISP_UNLOCK(isp);

 if (IS_SCSI(isp)) {
  struct isp_spi *spi = ISP_SPI_PC(isp, chan);
  spi->sim = sim;
  spi->path = path;
 } else {
  fcparam *fcp = FCPARAM(isp, chan);
  struct isp_fc *fc = ISP_FC_PC(isp, chan);
  struct sysctl_ctx_list *ctx = device_get_sysctl_ctx(isp->isp_osinfo.dev);
  struct sysctl_oid *tree = device_get_sysctl_tree(isp->isp_osinfo.dev);
  char name[16];

  ISP_LOCK(isp);
  fc->sim = sim;
  fc->path = path;
  fc->isp = isp;
  fc->ready = 1;
  fcp->isp_use_gft_id = 1;
  fcp->isp_use_gff_id = 1;

  callout_init_mtx(&fc->gdt, &isp->isp_lock, 0);
  TASK_INIT(&fc->gtask, 1, isp_gdt_task, fc);
  isp_loop_changed(isp, chan);
  ISP_UNLOCK(isp);
  if (kproc_create(isp_kthread, fc, &fc->kproc, 0, 0,
      "%s_%d", device_get_nameunit(isp->isp_osinfo.dev), chan)) {
   xpt_free_path(fc->path);
   ISP_LOCK(isp);
   xpt_bus_deregister(cam_sim_path(fc->sim));
   ISP_UNLOCK(isp);
   cam_sim_free(fc->sim, FALSE);
   return (ENOMEM);
  }
  fc->num_threads += 1;
  if (chan > 0) {
   snprintf(name, sizeof(name), "chan%d", chan);
   tree = SYSCTL_ADD_NODE(ctx, SYSCTL_CHILDREN(tree),
       OID_AUTO, name, CTLFLAG_RW, 0, "Virtual channel");
  }
  SYSCTL_ADD_QUAD(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "wwnn", CTLFLAG_RD, &fcp->isp_wwnn,
      "World Wide Node Name");
  SYSCTL_ADD_QUAD(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "wwpn", CTLFLAG_RD, &fcp->isp_wwpn,
      "World Wide Port Name");
  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "loop_down_limit", CTLFLAG_RW, &fc->loop_down_limit, 0,
      "Loop Down Limit");
  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "gone_device_time", CTLFLAG_RW, &fc->gone_device_time, 0,
      "Gone Device Time");





  SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "role", CTLTYPE_INT | CTLFLAG_RW, isp, chan,
      isp_role_sysctl, "I", "Current role");
  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "speed", CTLFLAG_RD, &fcp->isp_gbspeed, 0,
      "Connection speed in gigabits");
  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "linkstate", CTLFLAG_RD, &fcp->isp_linkstate, 0,
      "Link state");
  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "fwstate", CTLFLAG_RD, &fcp->isp_fwstate, 0,
      "Firmware state");
  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "loopstate", CTLFLAG_RD, &fcp->isp_loopstate, 0,
      "Loop state");
  SYSCTL_ADD_UINT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "topo", CTLFLAG_RD, &fcp->isp_topo, 0,
      "Connection topology");
  SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "use_gft_id", CTLFLAG_RWTUN, &fcp->isp_use_gft_id, 0,
      "Use GFT_ID during fabric scan");
  SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "use_gff_id", CTLFLAG_RWTUN, &fcp->isp_use_gff_id, 0,
      "Use GFF_ID during fabric scan");
 }
 return (0);
}
