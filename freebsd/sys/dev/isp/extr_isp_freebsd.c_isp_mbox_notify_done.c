
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mboxcmd_done; scalar_t__ mbox_sleeping; } ;
struct TYPE_5__ {TYPE_1__ isp_osinfo; } ;
typedef TYPE_2__ ispsoftc_t ;


 int wakeup (int*) ;

void
isp_mbox_notify_done(ispsoftc_t *isp)
{
 isp->isp_osinfo.mboxcmd_done = 1;
 if (isp->isp_osinfo.mbox_sleeping)
  wakeup(&isp->isp_osinfo.mboxcmd_done);
}
