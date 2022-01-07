
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct cam_sim* callback_arg; int callback; int event_enable; } ;
struct TYPE_4__ {int priority; int index; } ;
struct TYPE_6__ {int func_code; TYPE_1__ pinfo; } ;
union ccb {TYPE_2__ csa; TYPE_3__ ccb_h; int path; int lock; int hpt_dev; int hpt_intr; int * hpt_irq; } ;
struct cam_sim {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef int device_t ;
typedef union ccb IAL_ADAPTER_T ;


 int AC_LOST_DEVICE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int CAM_UNQUEUED_INDEX ;
 int DRIVER_NAME ;
 int DRIVER_VERSION ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int KdPrint (char*) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int PROC_DIR_NAME ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int XPT_SASYNC_CB ;
 int __str (int ) ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,union ccb*,int *) ;
 int bzero (union ccb*,int) ;
 struct cam_sim* cam_sim_alloc (int ,int ,int ,union ccb*,int ,int *,int,int,struct cam_devq*) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 union ccb* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,int ,int ) ;
 int free (union ccb*,int ) ;
 int hpt_action ;
 int hpt_async ;
 int hpt_intr ;
 int hpt_poll ;
 int hpt_printk (char*) ;
 int init_adapter (union ccb*) ;
 int launch_worker_thread () ;
 scalar_t__ malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_action (union ccb*) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (struct cam_sim*,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_setup_ccb (TYPE_3__*,int ,int) ;

__attribute__((used)) static int
hpt_attach(device_t dev)
{
 IAL_ADAPTER_T * pAdapter = device_get_softc(dev);
 int rid;
 union ccb *ccb;
 struct cam_devq *devq;
 struct cam_sim *hpt_vsim;

 device_printf(dev, "%s Version %s \n", DRIVER_NAME, DRIVER_VERSION);

 pAdapter->hpt_dev = dev;

 rid = init_adapter(pAdapter);
 if (rid)
  return rid;

 rid = 0;
 if ((pAdapter->hpt_irq = bus_alloc_resource_any(pAdapter->hpt_dev, SYS_RES_IRQ, &rid, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0))
 {
  hpt_printk(("can't allocate interrupt\n"));
  return(ENXIO);
 }

 if (bus_setup_intr(pAdapter->hpt_dev, pAdapter->hpt_irq,
    INTR_TYPE_CAM | INTR_MPSAFE,
    ((void*)0), hpt_intr, pAdapter, &pAdapter->hpt_intr))
 {
  hpt_printk(("can't set up interrupt\n"));
  free(pAdapter, M_DEVBUF);
  return(ENXIO);
 }


 if((ccb = (union ccb *)malloc(sizeof(*ccb), M_DEVBUF, M_WAITOK)) != (union ccb*)((void*)0))
 {
  bzero(ccb, sizeof(*ccb));
  ccb->ccb_h.pinfo.priority = 1;
  ccb->ccb_h.pinfo.index = CAM_UNQUEUED_INDEX;
 }
 else
 {
  return ENOMEM;
 }



 if((devq = cam_simq_alloc(8 )) == ((void*)0))
 {
  KdPrint(("ENXIO\n"));
  return ENOMEM;
 }




 hpt_vsim = cam_sim_alloc(hpt_action, hpt_poll, __str(PROC_DIR_NAME),
   pAdapter, device_get_unit(pAdapter->hpt_dev),
   &pAdapter->lock, 1, 8, devq);
 if (hpt_vsim == ((void*)0)) {
  cam_simq_free(devq);
  return ENOMEM;
 }

 mtx_lock(&pAdapter->lock);
 if (xpt_bus_register(hpt_vsim, dev, 0) != CAM_SUCCESS)
 {
  cam_sim_free(hpt_vsim, TRUE);
  mtx_unlock(&pAdapter->lock);
  hpt_vsim = ((void*)0);
  return ENXIO;
 }

 if(xpt_create_path(&pAdapter->path, ((void*)0),
   cam_sim_path(hpt_vsim), CAM_TARGET_WILDCARD,
   CAM_LUN_WILDCARD) != CAM_REQ_CMP)
 {
  xpt_bus_deregister(cam_sim_path(hpt_vsim));
  cam_sim_free(hpt_vsim, TRUE);
  mtx_unlock(&pAdapter->lock);
  hpt_vsim = ((void*)0);
  return ENXIO;
 }
 mtx_unlock(&pAdapter->lock);

 xpt_setup_ccb(&(ccb->ccb_h), pAdapter->path, 5);
 ccb->ccb_h.func_code = XPT_SASYNC_CB;
 ccb->csa.event_enable = AC_LOST_DEVICE;
 ccb->csa.callback = hpt_async;
 ccb->csa.callback_arg = hpt_vsim;
 xpt_action((union ccb *)ccb);
 free(ccb, M_DEVBUF);

 if (device_get_unit(dev) == 0) {

  launch_worker_thread();
 }

 return 0;
}
