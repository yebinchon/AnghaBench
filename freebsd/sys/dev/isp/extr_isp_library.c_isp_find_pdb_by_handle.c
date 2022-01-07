
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int ispsoftc_t ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ handle; } ;
typedef TYPE_1__ fcportdb_t ;
struct TYPE_6__ {TYPE_1__* portdb; } ;
typedef TYPE_2__ fcparam ;


 TYPE_2__* FCPARAM (int *,int) ;
 scalar_t__ FC_PORTDB_STATE_NIL ;
 int MAX_FC_TARG ;

int
isp_find_pdb_by_handle(ispsoftc_t *isp, int chan, uint16_t handle,
    fcportdb_t **lptr)
{
 fcparam *fcp = FCPARAM(isp, chan);
 int i;

 for (i = 0; i < MAX_FC_TARG; i++) {
  fcportdb_t *lp = &fcp->portdb[i];

  if (lp->state == FC_PORTDB_STATE_NIL)
   continue;
  if (lp->handle == handle) {
   *lptr = lp;
   return (1);
  }
 }
 return (0);
}
