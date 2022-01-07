
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* pqi_reg; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
struct TYPE_6__ {int admin_q_config; } ;


 int COND_WAIT (int,int) ;
 int DBG_ERR (char*) ;
 int LE_64 (scalar_t__) ;
 scalar_t__ PCI_MEM_GET64 (TYPE_2__*,int *,int ) ;
 int PCI_MEM_PUT64 (TYPE_2__*,int *,int ,int ) ;
 int PQISRC_ADMIN_QUEUE_CREATE_TIMEOUT ;
 int PQISRC_ADMIN_QUEUE_DELETE_TIMEOUT ;
 int PQI_ADMINQ_CONFIG ;
 scalar_t__ PQI_ADMIN_QUEUE_CONF_FUNC_CREATE_Q_PAIR ;
 scalar_t__ PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE ;
 int PQI_STATUS_SUCCESS ;
 int PQI_STATUS_TIMEOUT ;

int pqisrc_create_delete_adminq(pqisrc_softstate_t *softs,
     uint32_t cmd)
{
 int tmo = 0;
 int ret = PQI_STATUS_SUCCESS;



 PCI_MEM_PUT64(softs, &softs->pqi_reg->admin_q_config, PQI_ADMINQ_CONFIG, LE_64(cmd));

 if (cmd == PQI_ADMIN_QUEUE_CONF_FUNC_CREATE_Q_PAIR)
  tmo = PQISRC_ADMIN_QUEUE_CREATE_TIMEOUT;
 else
  tmo = PQISRC_ADMIN_QUEUE_DELETE_TIMEOUT;


 COND_WAIT((PCI_MEM_GET64(softs, &softs->pqi_reg->admin_q_config, PQI_ADMINQ_CONFIG) ==
    PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE), tmo);
 if (tmo <= 0) {
  DBG_ERR("Unable to create/delete admin queue pair\n");
  ret = PQI_STATUS_TIMEOUT;
 }

 return ret;
}
