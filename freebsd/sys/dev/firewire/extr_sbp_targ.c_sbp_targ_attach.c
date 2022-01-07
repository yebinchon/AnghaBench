
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xferlist; int end; int start; } ;
struct TYPE_3__ {void* post_busreset; void* post_explore; int dev; struct firewire_comm* fc; } ;
struct sbp_targ_softc {int * sim; TYPE_2__ fwb; int path; int mtx; TYPE_1__ fd; } ;
struct firewire_comm {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef int device_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENXIO ;
 int MAX_INITIATORS ;
 int MAX_LUN ;
 int MTX_DEF ;
 int M_SBP_TARG ;
 int SBP_LOCK (struct sbp_targ_softc*) ;
 int SBP_TARG_BIND_END ;
 int SBP_TARG_BIND_START ;
 int SBP_TARG_RECV_LEN ;
 int SBP_UNLOCK (struct sbp_targ_softc*) ;
 int STAILQ_INIT (int *) ;
 int TRUE ;
 int bzero (void*,int) ;
 int * cam_sim_alloc (int ,int ,char*,struct sbp_targ_softc*,int ,int *,int,int,struct cam_devq*) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 struct firewire_comm* device_get_ivars (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int fw_bindadd (struct firewire_comm*,TYPE_2__*) ;
 int fw_xferlist_add (int *,int ,int ,int ,int,struct firewire_comm*,void*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sbp_targ_action ;
 int sbp_targ_poll ;
 scalar_t__ sbp_targ_post_busreset ;
 scalar_t__ sbp_targ_post_explore ;
 int sbp_targ_recv ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

__attribute__((used)) static int
sbp_targ_attach(device_t dev)
{
 struct sbp_targ_softc *sc;
 struct cam_devq *devq;
 struct firewire_comm *fc;

        sc = (struct sbp_targ_softc *) device_get_softc(dev);
 bzero((void *)sc, sizeof(struct sbp_targ_softc));

 mtx_init(&sc->mtx, "sbp_targ", ((void*)0), MTX_DEF);
 sc->fd.fc = fc = device_get_ivars(dev);
 sc->fd.dev = dev;
 sc->fd.post_explore = (void *) sbp_targ_post_explore;
 sc->fd.post_busreset = (void *) sbp_targ_post_busreset;

        devq = cam_simq_alloc( MAX_LUN*MAX_INITIATORS);
 if (devq == ((void*)0))
  return (ENXIO);

 sc->sim = cam_sim_alloc(sbp_targ_action, sbp_targ_poll,
     "sbp_targ", sc, device_get_unit(dev), &sc->mtx,
                  1, 1, devq);
 if (sc->sim == ((void*)0)) {
  cam_simq_free(devq);
  return (ENXIO);
 }

 SBP_LOCK(sc);
 if (xpt_bus_register(sc->sim, dev, 0) != CAM_SUCCESS)
  goto fail;

 if (xpt_create_path(&sc->path, ((void*)0), cam_sim_path(sc->sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_bus_deregister(cam_sim_path(sc->sim));
  goto fail;
 }
 SBP_UNLOCK(sc);

 sc->fwb.start = SBP_TARG_BIND_START;
 sc->fwb.end = SBP_TARG_BIND_END;


 STAILQ_INIT(&sc->fwb.xferlist);
 fw_xferlist_add(&sc->fwb.xferlist, M_SBP_TARG,
              0, SBP_TARG_RECV_LEN, MAX_LUN ,
     fc, (void *)sc, sbp_targ_recv);
 fw_bindadd(fc, &sc->fwb);
 return 0;

fail:
 SBP_UNLOCK(sc);
 cam_sim_free(sc->sim, TRUE);
 return (ENXIO);
}
