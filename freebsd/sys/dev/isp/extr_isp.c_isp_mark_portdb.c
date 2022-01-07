
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ portid; int probational; } ;
typedef TYPE_1__ fcportdb_t ;
struct TYPE_5__ {TYPE_1__* portdb; } ;
typedef TYPE_2__ fcparam ;


 scalar_t__ DOMAIN_CONTROLLER_BASE ;
 scalar_t__ DOMAIN_CONTROLLER_END ;
 TYPE_2__* FCPARAM (int *,int) ;
 scalar_t__ FC_PORTDB_STATE_NIL ;
 int MAX_FC_TARG ;

__attribute__((used)) static void
isp_mark_portdb(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 fcportdb_t *lp;
 int i;

 for (i = 0; i < MAX_FC_TARG; i++) {
  lp = &fcp->portdb[i];
  if (lp->state == FC_PORTDB_STATE_NIL)
   continue;
  if (lp->portid >= DOMAIN_CONTROLLER_BASE &&
      lp->portid <= DOMAIN_CONTROLLER_END)
   continue;
  fcp->portdb[i].probational = 1;
 }
}
