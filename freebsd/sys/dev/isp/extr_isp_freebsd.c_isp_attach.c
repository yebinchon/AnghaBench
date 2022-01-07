
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct cam_sim {int dummy; } ;
typedef struct cam_sim cam_path ;
struct TYPE_10__ {int * devq; TYPE_3__* cdev; int tmo; int dev; } ;
struct TYPE_11__ {int isp_nchan; TYPE_1__ isp_osinfo; int isp_lock; int isp_maxcmds; int isp_dev; } ;
typedef TYPE_2__ ispsoftc_t ;
struct TYPE_12__ {TYPE_2__* si_drv1; } ;


 int EIO ;
 int FALSE ;
 int GID_OPERATOR ;
 int ISP_GET_PC (TYPE_2__*,int,struct cam_sim*,struct cam_sim*) ;
 int ISP_LOCK (TYPE_2__*) ;
 int ISP_UNLOCK (TYPE_2__*) ;
 int UID_ROOT ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,TYPE_2__*) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 int * cam_simq_alloc (int ) ;
 int cam_simq_free (int *) ;
 char* device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int hz ;
 scalar_t__ isp_attach_chan (TYPE_2__*,int *,int) ;
 int isp_cdevsw ;
 int isp_timer ;
 int isp_timer_count ;
 TYPE_3__* make_dev (int *,int,int ,int ,int,char*,char const*) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (struct cam_sim*) ;

int
isp_attach(ispsoftc_t *isp)
{
 const char *nu = device_get_nameunit(isp->isp_osinfo.dev);
 int du = device_get_unit(isp->isp_dev);
 int chan;




 isp->isp_osinfo.devq = cam_simq_alloc(isp->isp_maxcmds);
 if (isp->isp_osinfo.devq == ((void*)0)) {
  return (EIO);
 }

 for (chan = 0; chan < isp->isp_nchan; chan++) {
  if (isp_attach_chan(isp, isp->isp_osinfo.devq, chan)) {
   goto unwind;
  }
 }

 callout_init_mtx(&isp->isp_osinfo.tmo, &isp->isp_lock, 0);
 isp_timer_count = hz >> 2;
 callout_reset(&isp->isp_osinfo.tmo, isp_timer_count, isp_timer, isp);

 isp->isp_osinfo.cdev = make_dev(&isp_cdevsw, du, UID_ROOT, GID_OPERATOR, 0600, "%s", nu);
 if (isp->isp_osinfo.cdev) {
  isp->isp_osinfo.cdev->si_drv1 = isp;
 }
 return (0);

unwind:
 while (--chan >= 0) {
  struct cam_sim *sim;
  struct cam_path *path;

  ISP_GET_PC(isp, chan, sim, sim);
  ISP_GET_PC(isp, chan, path, path);
  xpt_free_path(path);
  ISP_LOCK(isp);
  xpt_bus_deregister(cam_sim_path(sim));
  ISP_UNLOCK(isp);
  cam_sim_free(sim, FALSE);
 }
 cam_simq_free(isp->isp_osinfo.devq);
 isp->isp_osinfo.devq = ((void*)0);
 return (-1);
}
