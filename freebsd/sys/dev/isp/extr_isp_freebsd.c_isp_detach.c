
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int is_exiting; int devq; int tmo; int * cdev; } ;
struct TYPE_8__ {int isp_nchan; TYPE_1__ isp_osinfo; } ;
typedef TYPE_2__ ispsoftc_t ;


 int ISP_LOCK (TYPE_2__*) ;
 int ISP_UNLOCK (TYPE_2__*) ;
 int callout_drain (int *) ;
 int cam_simq_free (int ) ;
 int destroy_dev (int *) ;
 int isp_detach_chan (TYPE_2__*,int) ;

int
isp_detach(ispsoftc_t *isp)
{
 int chan;

 if (isp->isp_osinfo.cdev) {
  destroy_dev(isp->isp_osinfo.cdev);
  isp->isp_osinfo.cdev = ((void*)0);
 }
 ISP_LOCK(isp);

 isp->isp_osinfo.is_exiting = 1;
 for (chan = isp->isp_nchan - 1; chan >= 0; chan -= 1)
  isp_detach_chan(isp, chan);
 ISP_UNLOCK(isp);
 callout_drain(&isp->isp_osinfo.tmo);
 cam_simq_free(isp->isp_osinfo.devq);
 return (0);
}
