
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_5__ {int is_vport; int * ocs; } ;
typedef TYPE_1__ ocs_sport_t ;
struct TYPE_6__ {scalar_t__ fc_id; } ;
typedef TYPE_2__ ocs_fcport ;


 TYPE_2__* FCPORT (int *,int ) ;

void
ocs_scsi_ini_del_sport(ocs_sport_t *sport)
{
 ocs_t *ocs = sport->ocs;
 ocs_fcport *fcp = FCPORT(ocs, 0);

 if (!sport->is_vport) {
  fcp->fc_id = 0;
 }
}
