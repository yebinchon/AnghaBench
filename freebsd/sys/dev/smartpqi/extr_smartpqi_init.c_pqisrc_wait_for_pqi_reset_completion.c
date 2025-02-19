
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_10__ {TYPE_2__* pqi_reg; } ;
typedef TYPE_3__ pqisrc_softstate_t ;
struct TYPE_8__ {scalar_t__ reset_action; } ;
struct TYPE_11__ {TYPE_1__ bits; int all_bits; } ;
typedef TYPE_4__ pqi_reset_reg_t ;
struct TYPE_9__ {int dev_reset; int pqi_dev_adminq_cap; } ;


 int DBG_INIT (char*,int) ;
 int OS_SLEEP (int ) ;
 int PCI_MEM_GET32 (TYPE_3__*,int *,int ) ;
 int PCI_MEM_GET64 (TYPE_3__*,int *,int ) ;
 int PQI_ADMINQ_CAP ;
 int PQI_DEV_RESET ;
 scalar_t__ PQI_RESET_ACTION_COMPLETED ;
 int PQI_RESET_POLL_INTERVAL ;
 int PQI_STATUS_SUCCESS ;
 int PQI_STATUS_TIMEOUT ;

int pqisrc_wait_for_pqi_reset_completion(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;
 pqi_reset_reg_t reset_reg;
 int pqi_reset_timeout = 0;
 uint64_t val = 0;
 uint32_t max_timeout = 0;

 val = PCI_MEM_GET64(softs, &softs->pqi_reg->pqi_dev_adminq_cap, PQI_ADMINQ_CAP);

 max_timeout = (val & 0xFFFF00000000) >> 32;

 DBG_INIT("max_timeout for PQI reset completion in 100 msec units = %u\n", max_timeout);

 while(1) {
  if (pqi_reset_timeout++ == max_timeout) {
   return PQI_STATUS_TIMEOUT;
  }
  OS_SLEEP(PQI_RESET_POLL_INTERVAL);
  reset_reg.all_bits = PCI_MEM_GET32(softs,
   &softs->pqi_reg->dev_reset, PQI_DEV_RESET);
  if (reset_reg.bits.reset_action == PQI_RESET_ACTION_COMPLETED)
   break;
 }

 return ret;
}
