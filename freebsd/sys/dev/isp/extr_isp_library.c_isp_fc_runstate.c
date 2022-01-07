
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_3__ {scalar_t__ role; int isp_loopstate; } ;
typedef TYPE_1__ fcparam ;


 TYPE_1__* FCPARAM (int *,int) ;
 int ISPCTL_FCLINK_TEST ;
 int ISPCTL_PDB_SYNC ;
 int ISPCTL_SCAN_FABRIC ;
 int ISPCTL_SCAN_LOOP ;
 scalar_t__ ISP_ROLE_NONE ;
 int isp_control (int *,int ,int,...) ;

int
isp_fc_runstate(ispsoftc_t *isp, int chan, int tval)
{
 fcparam *fcp = FCPARAM(isp, chan);
 int res;

again:
 if (fcp->role == ISP_ROLE_NONE)
  return (-1);
 res = isp_control(isp, ISPCTL_FCLINK_TEST, chan, tval);
 if (res > 0)
  goto again;
 if (res < 0)
  return (fcp->isp_loopstate);
 res = isp_control(isp, ISPCTL_SCAN_LOOP, chan);
 if (res > 0)
  goto again;
 if (res < 0)
  return (fcp->isp_loopstate);
 res = isp_control(isp, ISPCTL_SCAN_FABRIC, chan);
 if (res > 0)
  goto again;
 if (res < 0)
  return (fcp->isp_loopstate);
 res = isp_control(isp, ISPCTL_PDB_SYNC, chan);
 if (res > 0)
  goto again;
 return (fcp->isp_loopstate);
}
