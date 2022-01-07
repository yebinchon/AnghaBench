
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mboxbsy; scalar_t__ mboxcmd_done; } ;
struct TYPE_5__ {TYPE_1__ isp_osinfo; } ;
typedef TYPE_2__ ispsoftc_t ;



int
isp_mbox_acquire(ispsoftc_t *isp)
{
 if (isp->isp_osinfo.mboxbsy) {
  return (1);
 } else {
  isp->isp_osinfo.mboxcmd_done = 0;
  isp->isp_osinfo.mboxbsy = 1;
  return (0);
 }
}
