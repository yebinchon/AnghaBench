
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int * sim; int * devq; int done; int actv; } ;
typedef TYPE_1__ vhba_softc_t ;


 scalar_t__ CAM_SUCCESS ;
 int EIO ;
 int ENOMEM ;
 int TAILQ_INIT (int *) ;
 int TRUE ;
 int VHBA_MAXCMDS ;
 int VHBA_MOD ;
 int * cam_sim_alloc (int ,int ,int ,TYPE_1__*,int ,int *,int ,int ,int *) ;
 int cam_sim_free (int *,int ) ;
 int * cam_simq_alloc (int ) ;
 int cam_simq_free (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vhba_action ;
 int vhba_init (TYPE_1__*) ;
 int vhba_poll ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;

__attribute__((used)) static int
vhba_attach(vhba_softc_t *vhba)
{
 TAILQ_INIT(&vhba->actv);
 TAILQ_INIT(&vhba->done);
 vhba->devq = cam_simq_alloc(VHBA_MAXCMDS);
 if (vhba->devq == ((void*)0)) {
  return (ENOMEM);
 }
 vhba->sim = cam_sim_alloc(vhba_action, vhba_poll, VHBA_MOD, vhba, 0, &vhba->lock, VHBA_MAXCMDS, VHBA_MAXCMDS, vhba->devq);
 if (vhba->sim == ((void*)0)) {
  cam_simq_free(vhba->devq);
  return (ENOMEM);
 }
 vhba_init(vhba);
 mtx_lock(&vhba->lock);
 if (xpt_bus_register(vhba->sim, 0, 0) != CAM_SUCCESS) {
  cam_sim_free(vhba->sim, TRUE);
  mtx_unlock(&vhba->lock);
  return (EIO);
 }
 mtx_unlock(&vhba->lock);
 return (0);
}
