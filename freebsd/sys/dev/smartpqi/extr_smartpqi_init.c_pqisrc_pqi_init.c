
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int ctrl_in_pqi_mode; scalar_t__ intr_type; int ctrl_online; scalar_t__ max_outstanding_io; int taglist; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int CTRL_PQI_MODE ;
 int DBG_ERR (char*,...) ;
 int DBG_FUNC (char*) ;
 scalar_t__ INTR_TYPE_FIXED ;
 scalar_t__ INTR_TYPE_NONE ;
 int PQI_SAVE_CTRL_MODE (TYPE_1__*,int ) ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int os_free_intr_config (TYPE_1__*) ;
 int os_get_intr_config (TYPE_1__*) ;
 int os_get_processor_config (TYPE_1__*) ;
 int pqisrc_allocate_rcb (TYPE_1__*) ;
 int pqisrc_check_pqimode (TYPE_1__*) ;
 int pqisrc_configure_legacy_intx (TYPE_1__*,int) ;
 int pqisrc_configure_op_queues (TYPE_1__*) ;
 int pqisrc_create_admin_queue (TYPE_1__*) ;
 int pqisrc_create_op_queues (TYPE_1__*) ;
 int pqisrc_destroy_admin_queue (TYPE_1__*) ;
 int pqisrc_destroy_taglist (TYPE_1__*,int *) ;
 int pqisrc_free_rcb (TYPE_1__*,scalar_t__) ;
 int pqisrc_init_taglist (TYPE_1__*,int *,scalar_t__) ;
 int sis_enable_intx (TYPE_1__*) ;

int pqisrc_pqi_init(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;

 DBG_FUNC("IN\n");


 ret = pqisrc_check_pqimode(softs);
 if(ret) {
  DBG_ERR("failed to switch to pqi\n");
                goto err_out;
 }

 PQI_SAVE_CTRL_MODE(softs, CTRL_PQI_MODE);
 softs->ctrl_in_pqi_mode = 1;


 ret = os_get_processor_config(softs);
 if (ret) {
  DBG_ERR("Failed to get processor config from OS %d\n",
   ret);
  goto err_out;
 }

 softs->intr_type = INTR_TYPE_NONE;


 ret = os_get_intr_config(softs);
 if (ret) {
  DBG_ERR("Failed to get interrupt config from OS %d\n",
   ret);
  goto err_out;
 }




 if (INTR_TYPE_FIXED == softs->intr_type) {
  pqisrc_configure_legacy_intx(softs, 1);
  sis_enable_intx(softs);
 }


 ret = pqisrc_create_admin_queue(softs);
 if(ret) {
                DBG_ERR("Failed to configure admin queue\n");
                goto err_admin_queue;
     }





 ret = pqisrc_allocate_rcb(softs);
 if (ret == PQI_STATUS_FAILURE) {
                DBG_ERR("Failed to allocate rcb \n");
                goto err_rcb;
     }


 ret = pqisrc_init_taglist(softs,&softs->taglist,
    softs->max_outstanding_io);
 if (ret) {
  DBG_ERR("Failed to allocate memory for request id q : %d\n",
   ret);
  goto err_taglist;
 }

 ret = pqisrc_configure_op_queues(softs);
 if (ret) {
   DBG_ERR("Failed to configure op queue\n");
   goto err_config_opq;
 }


 ret = pqisrc_create_op_queues(softs);
 if(ret) {
                DBG_ERR("Failed to create op queue\n");
                ret = PQI_STATUS_FAILURE;
                goto err_create_opq;
        }

 softs->ctrl_online = 1;

 DBG_FUNC("OUT\n");
 return ret;

err_create_opq:
err_config_opq:
 pqisrc_destroy_taglist(softs,&softs->taglist);
err_taglist:
 pqisrc_free_rcb(softs, softs->max_outstanding_io + 1);
err_rcb:
 pqisrc_destroy_admin_queue(softs);
err_admin_queue:
 os_free_intr_config(softs);
err_out:
 DBG_FUNC("OUT failed\n");
 return PQI_STATUS_FAILURE;
}
