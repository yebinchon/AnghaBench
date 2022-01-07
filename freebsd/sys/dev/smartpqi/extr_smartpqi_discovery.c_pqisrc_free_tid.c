
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t index; int* tid; } ;
struct TYPE_5__ {TYPE_1__ tid_pool; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_ERR (char*) ;
 size_t PQI_MAX_PHYSICALS ;

void pqisrc_free_tid(pqisrc_softstate_t *softs, int tid)
{
 if(softs->tid_pool.index >= PQI_MAX_PHYSICALS) {
  DBG_ERR("Target ID queue is full\n");
  return;
 }

 softs->tid_pool.index++;
 softs->tid_pool.tid[softs->tid_pool.index] = tid;
}
