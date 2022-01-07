
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct cmng_vnic {TYPE_1__* vnic_min_rate; } ;
struct TYPE_4__ {size_t fair_threshold; size_t upper_bound; size_t fairness_timeout; } ;
struct cmng_struct_per_port {TYPE_2__ fair_vars; } ;
struct cmng_init_input {int port_rate; scalar_t__* vnic_min_rate; } ;
struct cmng_init {struct cmng_struct_per_port port; struct cmng_vnic vnic; } ;
struct TYPE_3__ {size_t vn_credit_delta; } ;


 size_t ECORE_PORT2_MODE_NUM_VNICS ;
 size_t FAIR_MEM ;
 size_t MIN_ABOVE_THRESH ;
 size_t QM_ARB_BYTES ;
 size_t SDM_TICKS ;
 int T_FAIR_COEF ;

__attribute__((used)) static inline void ecore_init_min(const struct cmng_init_input *input_data,
      uint32_t r_param, struct cmng_init *ram_data)
{
 uint32_t vnic, fair_periodic_timeout_usec, vnicWeightSum, tFair;
 struct cmng_vnic *vdata = &ram_data->vnic;
 struct cmng_struct_per_port *pdata = &ram_data->port;


 fair_periodic_timeout_usec = QM_ARB_BYTES / r_param;





 tFair = T_FAIR_COEF / input_data->port_rate;


 pdata->fair_vars.fair_threshold = QM_ARB_BYTES;





 pdata->fair_vars.upper_bound = r_param * tFair * FAIR_MEM;


 pdata->fair_vars.fairness_timeout =
    fair_periodic_timeout_usec / SDM_TICKS;


 vnicWeightSum = 0;

 for (vnic = 0; vnic < ECORE_PORT2_MODE_NUM_VNICS; vnic++)
  vnicWeightSum += input_data->vnic_min_rate[vnic];


 if (vnicWeightSum > 0) {

  for (vnic = 0; vnic < ECORE_PORT2_MODE_NUM_VNICS; vnic++) {





   vdata->vnic_min_rate[vnic].vn_credit_delta =
    ((uint32_t)(input_data->vnic_min_rate[vnic]) * 100 *
    (T_FAIR_COEF / (8 * 100 * vnicWeightSum)));
   if (vdata->vnic_min_rate[vnic].vn_credit_delta <
       pdata->fair_vars.fair_threshold +
       MIN_ABOVE_THRESH) {
    vdata->vnic_min_rate[vnic].vn_credit_delta =
     pdata->fair_vars.fair_threshold +
     MIN_ABOVE_THRESH;
   }
  }
 }
}
