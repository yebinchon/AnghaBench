
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int* tid; } ;
struct TYPE_5__ {TYPE_1__ tid_pool; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_ERR (char*) ;
 int INVALID_ELEM ;

int pqisrc_alloc_tid(pqisrc_softstate_t *softs)
{
 if(softs->tid_pool.index <= -1) {
  DBG_ERR("Target ID exhausted\n");
  return INVALID_ELEM;
 }

 return softs->tid_pool.tid[softs->tid_pool.index--];
}
