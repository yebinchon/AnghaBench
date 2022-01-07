
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_5__ {int state; } ;
typedef TYPE_1__ fcportdb_t ;
struct TYPE_6__ {TYPE_1__* portdb; } ;
typedef TYPE_2__ fcparam ;


 TYPE_2__* FCPARAM (int *,int) ;






 int ISPASYNC_DEV_GONE ;
 int MAX_FC_TARG ;
 int isp_async (int *,int ,int,TYPE_1__*) ;
 int panic (char*,int) ;

__attribute__((used)) static void
isp_clear_portdb(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 fcportdb_t *lp;
 int i;

 for (i = 0; i < MAX_FC_TARG; i++) {
  lp = &fcp->portdb[i];
  switch (lp->state) {
  case 132:
  case 133:
  case 129:
   lp->state = 130;
   isp_async(isp, ISPASYNC_DEV_GONE, chan, lp);
   break;
  case 130:
  case 131:
   lp->state = 130;
   break;
  case 128:
   break;
  default:
   panic("Don't know how to clear state %d\n", lp->state);
  }
 }
}
