
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqisrc_softstate_t ;
typedef int ib_queue_t ;


 int DBG_FUNC (char*,...) ;
 int PQI_CHANGE_OP_IQ_PROP_ASSIGN_AIO ;
 int PQI_STATUS_SUCCESS ;
 int pqisrc_change_op_ibq_queue_prop (int *,int *,int ) ;
 int pqisrc_create_op_ibq (int *,int *) ;

int pqisrc_create_op_aio_ibq(pqisrc_softstate_t *softs,
   ib_queue_t *op_aio_ib_q)
{
 int ret = PQI_STATUS_SUCCESS;

 DBG_FUNC("IN\n");

 ret = pqisrc_create_op_ibq(softs,op_aio_ib_q);
 if ( PQI_STATUS_SUCCESS == ret)
  ret = pqisrc_change_op_ibq_queue_prop(softs,
     op_aio_ib_q, PQI_CHANGE_OP_IQ_PROP_ASSIGN_AIO);

 DBG_FUNC("OUT ret : %d\n", ret);
 return ret;
}
