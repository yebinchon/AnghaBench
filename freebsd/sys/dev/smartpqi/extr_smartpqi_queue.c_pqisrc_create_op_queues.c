
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqisrc_softstate_t ;


 int DBG_FUNC (char*,...) ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int pqisrc_alloc_and_create_event_queue (int *) ;
 int pqisrc_alloc_and_create_ib_queues (int *) ;
 int pqisrc_alloc_and_create_ob_queues (int *) ;
 int pqisrc_destroy_op_ib_queues (int *) ;
 int pqisrc_destroy_op_ob_queues (int *) ;

int pqisrc_create_op_queues(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;

 DBG_FUNC("IN\n");


 ret = pqisrc_alloc_and_create_ib_queues(softs);
 if (ret)
  goto err_out;

 ret = pqisrc_alloc_and_create_ob_queues(softs);
 if (ret)
  goto err_out_obq;


 ret = pqisrc_alloc_and_create_event_queue(softs);
 if (ret)
  goto err_out_eventq;

 DBG_FUNC("OUT\n");
 return ret;
err_out_eventq:
 pqisrc_destroy_op_ob_queues(softs);
err_out_obq:
 pqisrc_destroy_op_ib_queues(softs);
err_out:
 DBG_FUNC("OUT failed %d\n", ret);
 return PQI_STATUS_FAILURE;
}
