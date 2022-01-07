
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ocs_t ;
struct TYPE_3__ {int tgt_data; int is_vport; int * ocs; } ;
typedef TYPE_1__ ocs_sport_t ;
typedef int int32_t ;


 int FCPORT (int *,int ) ;

int32_t
ocs_scsi_tgt_new_sport(ocs_sport_t *sport)
{
 ocs_t *ocs = sport->ocs;

 if(!sport->is_vport) {
  sport->tgt_data = FCPORT(ocs, 0);
 }

 return 0;
}
