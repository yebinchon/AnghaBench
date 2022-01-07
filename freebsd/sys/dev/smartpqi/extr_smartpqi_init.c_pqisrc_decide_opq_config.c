
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int sgt_t ;
struct TYPE_4__ {int max_iq_elem_len; int max_oq_elem_len; int max_iq_elements; int max_oq_elements; } ;
struct TYPE_5__ {int intr_count; int num_cpus_online; int num_op_obq; int share_opq_and_eventq; int num_op_raid_ibq; int num_op_aio_ibq; int ibq_elem_size; int obq_elem_size; int max_ib_iu_length_per_fw; int max_ib_iu_length; int max_outstanding_io; int num_elem_per_op_ibq; int num_elem_per_op_obq; int max_sg_per_iu; TYPE_1__ pqi_dev_cap; scalar_t__ ob_spanning_supported; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int DBG_INIT (char*,int,...) ;
 int MAX_EMBEDDED_SG_IN_FIRST_IU ;
 int MIN (int,int) ;

void pqisrc_decide_opq_config(pqisrc_softstate_t *softs)
{
 uint16_t total_iq_elements;

 DBG_FUNC("IN\n");

 DBG_INIT("softs->intr_count : %d  softs->num_cpus_online : %d",
  softs->intr_count, softs->num_cpus_online);

 if (softs->intr_count == 1 || softs->num_cpus_online == 1) {

  softs->num_op_obq = 1;
  softs->share_opq_and_eventq = 1;
 }
 else {

  softs->num_op_obq = MIN(softs->num_cpus_online,
     softs->intr_count) - 1;
  softs->num_op_obq = softs->intr_count - 1;
  softs->share_opq_and_eventq = 0;
 }





 if (softs->intr_count > 1)
  softs->share_opq_and_eventq = 0;

 DBG_INIT("softs->num_op_obq : %d\n",softs->num_op_obq);

 softs->num_op_raid_ibq = softs->num_op_obq;
 softs->num_op_aio_ibq = softs->num_op_raid_ibq;
 softs->ibq_elem_size = softs->pqi_dev_cap.max_iq_elem_len * 16;
 softs->obq_elem_size = softs->pqi_dev_cap.max_oq_elem_len * 16;
 if (softs->max_ib_iu_length_per_fw == 256 &&
     softs->ob_spanning_supported) {

  softs->max_ib_iu_length = softs->ibq_elem_size;
 } else {

  softs->max_ib_iu_length =
   (softs->max_ib_iu_length_per_fw / softs->ibq_elem_size) *
    softs->ibq_elem_size;

 }



 total_iq_elements = (softs->max_outstanding_io *
  (softs->max_ib_iu_length / softs->ibq_elem_size));

 softs->num_elem_per_op_ibq = total_iq_elements / softs->num_op_raid_ibq;
 softs->num_elem_per_op_ibq = MIN(softs->num_elem_per_op_ibq,
  softs->pqi_dev_cap.max_iq_elements);

 softs->num_elem_per_op_obq = softs->max_outstanding_io / softs->num_op_obq;
 softs->num_elem_per_op_obq = MIN(softs->num_elem_per_op_obq,
  softs->pqi_dev_cap.max_oq_elements);

 softs->max_sg_per_iu = ((softs->max_ib_iu_length -
    softs->ibq_elem_size) /
    sizeof(sgt_t)) +
    MAX_EMBEDDED_SG_IN_FIRST_IU;

 DBG_INIT("softs->max_ib_iu_length: %d\n", softs->max_ib_iu_length);
 DBG_INIT("softs->num_elem_per_op_ibq: %d\n", softs->num_elem_per_op_ibq);
 DBG_INIT("softs->num_elem_per_op_obq: %d\n", softs->num_elem_per_op_obq);
 DBG_INIT("softs->max_sg_per_iu: %d\n", softs->max_sg_per_iu);

 DBG_FUNC("OUT\n");
}
