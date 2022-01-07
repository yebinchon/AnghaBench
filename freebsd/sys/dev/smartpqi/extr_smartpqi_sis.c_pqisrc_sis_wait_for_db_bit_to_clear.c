
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_1__* ioa_reg; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_6__ {int host_to_ioa_db; } ;


 int DBG_ERR (char*,...) ;
 int DBG_FUNC (char*) ;
 int GET_FW_STATUS (TYPE_2__*) ;
 int LEGACY_SIS_IDBR ;
 int OS_SLEEP (int) ;
 int PCI_MEM_GET32 (TYPE_2__*,int *,int ) ;
 int PQI_CTRL_KERNEL_PANIC ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int PQI_STATUS_TIMEOUT ;
 scalar_t__ SIS_DB_BIT_CLEAR_TIMEOUT_CNT ;

int pqisrc_sis_wait_for_db_bit_to_clear(pqisrc_softstate_t *softs, uint32_t bit)
{
 int rcode = PQI_STATUS_SUCCESS;
 uint32_t db_reg;
 uint32_t loop_cnt = 0;

 DBG_FUNC("IN\n");

 while (1) {
  db_reg = PCI_MEM_GET32(softs, &softs->ioa_reg->host_to_ioa_db,
    LEGACY_SIS_IDBR);
  if ((db_reg & bit) == 0)
   break;
  if (GET_FW_STATUS(softs) & PQI_CTRL_KERNEL_PANIC) {
   DBG_ERR("controller kernel panic\n");
   rcode = PQI_STATUS_FAILURE;
   break;
  }
  if (loop_cnt++ == SIS_DB_BIT_CLEAR_TIMEOUT_CNT) {
   DBG_ERR("door-bell reg bit 0x%x not cleared\n", bit);
   rcode = PQI_STATUS_TIMEOUT;
   break;
  }
  OS_SLEEP(500);
 }

 DBG_FUNC("OUT\n");

 return rcode;
}
