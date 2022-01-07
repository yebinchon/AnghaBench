
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int sc_bus_cnt; int sc_state; int sc_lock; int * sims; int * paths; int sc_devnode; } ;
struct cam_devq {int dummy; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int EVENTHANDLER_REGISTER (int ,int ,struct gdt_softc*,int ) ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_INIT ;
 int GDT_MAXCMDS ;
 int GDT_NORMAL ;
 int SHUTDOWN_PRI_DEFAULT ;
 int cam_sim_alloc (int ,int ,char*,struct gdt_softc*,int ,int *,int,int ,struct cam_devq*) ;
 int cam_sim_free (int ,int) ;
 int cam_sim_path (int ) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int device_get_unit (int ) ;
 int iir_action ;
 int iir_poll ;
 int iir_shutdown ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int shutdown_final ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (int ,int ,int) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;

void
iir_attach(struct gdt_softc *gdt)
{
    struct cam_devq *devq;
    int i;

    GDT_DPRINTF(GDT_D_INIT, ("iir_attach()\n"));





    devq = cam_simq_alloc(32);
    if (devq == ((void*)0))
        return;

    for (i = 0; i < gdt->sc_bus_cnt; i++) {



        gdt->sims[i] = cam_sim_alloc(iir_action, iir_poll, "iir",
     gdt, device_get_unit(gdt->sc_devnode), &gdt->sc_lock,
                 1, GDT_MAXCMDS, devq);
 mtx_lock(&gdt->sc_lock);
        if (xpt_bus_register(gdt->sims[i], gdt->sc_devnode, i) != CAM_SUCCESS) {
            cam_sim_free(gdt->sims[i], i == 0);
     mtx_unlock(&gdt->sc_lock);
            break;
        }

        if (xpt_create_path(&gdt->paths[i], ((void*)0),
                            cam_sim_path(gdt->sims[i]),
                            CAM_TARGET_WILDCARD,
                            CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
            xpt_bus_deregister(cam_sim_path(gdt->sims[i]));
            cam_sim_free(gdt->sims[i], i == 0);
     mtx_unlock(&gdt->sc_lock);
            break;
        }
 mtx_unlock(&gdt->sc_lock);
    }
    if (i > 0)
        EVENTHANDLER_REGISTER(shutdown_final, iir_shutdown,
                              gdt, SHUTDOWN_PRI_DEFAULT);

    gdt->sc_state = GDT_NORMAL;
}
