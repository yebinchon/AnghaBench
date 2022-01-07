
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int * tid; } ;
struct TYPE_5__ {TYPE_1__ tid_pool; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int PQI_MAX_LOGICALS ;
 int PQI_MAX_PHYSICALS ;

void pqisrc_init_targetid_pool(pqisrc_softstate_t *softs)
{
 int i, tid = PQI_MAX_PHYSICALS + PQI_MAX_LOGICALS - 1;

 for(i = 0; i < PQI_MAX_PHYSICALS; i++) {
  softs->tid_pool.tid[i] = tid--;
 }
 softs->tid_pool.index = i - 1;
}
