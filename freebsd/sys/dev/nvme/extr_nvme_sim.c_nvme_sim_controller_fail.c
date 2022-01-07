
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_sim_softc {int s_sim; int s_path; } ;


 int AC_LOST_DEVICE ;
 int M_NVME ;
 int TRUE ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 int free (struct nvme_sim_softc*,int ) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static void
nvme_sim_controller_fail(void *ctrlr_arg)
{
 struct nvme_sim_softc *sc = ctrlr_arg;

 xpt_async(AC_LOST_DEVICE, sc->s_path, ((void*)0));
 xpt_free_path(sc->s_path);
 xpt_bus_deregister(cam_sim_path(sc->s_sim));
 cam_sim_free(sc->s_sim, TRUE);
 free(sc, M_NVME);
}
