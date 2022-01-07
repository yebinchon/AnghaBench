
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {struct ahc_platform_data* platform_data; int dev_softc; } ;
struct ahc_platform_data {int * eh; int * sim; int path; int * sim_b; int path_b; int * irq; int irq_res_type; int * regs; int regs_res_id; int regs_res_type; } ;


 int AC_LOST_DEVICE ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int M_DEVBUF ;
 int TRUE ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int free (struct ahc_platform_data*,int ) ;
 int shutdown_final ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

void
ahc_platform_free(struct ahc_softc *ahc)
{
 struct ahc_platform_data *pdata;

 pdata = ahc->platform_data;
 if (pdata != ((void*)0)) {
  if (pdata->regs != ((void*)0))
   bus_release_resource(ahc->dev_softc,
          pdata->regs_res_type,
          pdata->regs_res_id,
          pdata->regs);

  if (pdata->irq != ((void*)0))
   bus_release_resource(ahc->dev_softc,
          pdata->irq_res_type,
          0, pdata->irq);

  if (pdata->sim_b != ((void*)0)) {
   xpt_async(AC_LOST_DEVICE, pdata->path_b, ((void*)0));
   xpt_free_path(pdata->path_b);
   xpt_bus_deregister(cam_sim_path(pdata->sim_b));
   cam_sim_free(pdata->sim_b, TRUE);
  }
  if (pdata->sim != ((void*)0)) {
   xpt_async(AC_LOST_DEVICE, pdata->path, ((void*)0));
   xpt_free_path(pdata->path);
   xpt_bus_deregister(cam_sim_path(pdata->sim));
   cam_sim_free(pdata->sim, TRUE);
  }
  if (pdata->eh != ((void*)0))
   EVENTHANDLER_DEREGISTER(shutdown_final, pdata->eh);
  free(ahc->platform_data, M_DEVBUF);
 }
}
