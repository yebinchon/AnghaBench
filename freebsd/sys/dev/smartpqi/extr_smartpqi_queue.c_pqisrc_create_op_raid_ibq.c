
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pqisrc_softstate_t ;
typedef int ib_queue_t ;


 int DBG_FUNC (char*) ;
 int PQI_STATUS_SUCCESS ;
 int pqisrc_create_op_ibq (int *,int *) ;

int pqisrc_create_op_raid_ibq(pqisrc_softstate_t *softs,
   ib_queue_t *op_raid_ib_q)
{
 int ret = PQI_STATUS_SUCCESS;;

 DBG_FUNC("IN\n");

 ret = pqisrc_create_op_ibq(softs,op_raid_ib_q);

 DBG_FUNC("OUT\n");
 return ret;
}
