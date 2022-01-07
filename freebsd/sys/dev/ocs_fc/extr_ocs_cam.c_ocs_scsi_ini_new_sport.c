
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_5__ {int fc_id; TYPE_2__* tgt_data; int is_vport; int * ocs; } ;
typedef TYPE_1__ ocs_sport_t ;
struct TYPE_6__ {int fc_id; } ;
typedef TYPE_2__ ocs_fcport ;
typedef int int32_t ;


 TYPE_2__* FCPORT (int *,int ) ;

int32_t
ocs_scsi_ini_new_sport(ocs_sport_t *sport)
{
 ocs_t *ocs = sport->ocs;
 ocs_fcport *fcp = FCPORT(ocs, 0);

 if (!sport->is_vport) {
  sport->tgt_data = fcp;
  fcp->fc_id = sport->fc_id;
 }

 return 0;
}
