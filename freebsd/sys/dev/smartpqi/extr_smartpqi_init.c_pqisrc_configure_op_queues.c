
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ max_outstanding_io; scalar_t__ max_io_for_scsi_ml; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 scalar_t__ PQI_RESERVED_IO_SLOTS_CNT ;
 int PQI_STATUS_SUCCESS ;
 int pqisrc_decide_opq_config (TYPE_1__*) ;
 int pqisrc_report_pqi_capability (TYPE_1__*) ;

int pqisrc_configure_op_queues(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;



 ret = pqisrc_report_pqi_capability(softs);
 if (ret) {
  DBG_ERR("Failed to send report pqi dev capability request : %d\n",
    ret);
  goto err_out;
 }


 softs->max_io_for_scsi_ml = softs->max_outstanding_io - PQI_RESERVED_IO_SLOTS_CNT;


 pqisrc_decide_opq_config(softs);

 DBG_FUNC("OUT\n");
 return ret;

err_out:
 DBG_FUNC("OUT failed\n");
 return ret;
}
