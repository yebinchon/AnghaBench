
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flow_control_configuration {int * dcb_outer_pri; int * traffic_type_to_priority_cos; int dont_add_pri_0; int dcb_version; int dcb_enabled; } ;
struct ecore_func_tx_start_params {int * dcb_outer_pri; int * traffic_type_to_priority_cos; int dont_add_pri_0; int dcb_version; int dcb_enabled; } ;
struct TYPE_2__ {struct ecore_func_tx_start_params tx_start; } ;
struct ecore_func_state_params {TYPE_1__ params; struct ecore_func_sp_obj* f_obj; } ;
struct ecore_func_sp_obj {int rdata_mapping; scalar_t__ rdata; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;


 int ARRAY_SIZE (int *) ;
 int ECORE_MEMSET (struct flow_control_configuration*,int ,int) ;
 int MAX_TRAFFIC_TYPES ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_START_TRAFFIC ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ecore_func_send_tx_start(struct bxe_softc *sc,
           struct ecore_func_state_params *params)
{
 struct ecore_func_sp_obj *o = params->f_obj;
 struct flow_control_configuration *rdata =
  (struct flow_control_configuration *)o->rdata;
 ecore_dma_addr_t data_mapping = o->rdata_mapping;
 struct ecore_func_tx_start_params *tx_start_params =
  &params->params.tx_start;
 int i;

 ECORE_MEMSET(rdata, 0, sizeof(*rdata));

 rdata->dcb_enabled = tx_start_params->dcb_enabled;
 rdata->dcb_version = tx_start_params->dcb_version;
 rdata->dont_add_pri_0 = tx_start_params->dont_add_pri_0;

 for (i = 0; i < ARRAY_SIZE(rdata->traffic_type_to_priority_cos); i++)
  rdata->traffic_type_to_priority_cos[i] =
   tx_start_params->traffic_type_to_priority_cos[i];

 for (i = 0; i < MAX_TRAFFIC_TYPES; i++)
  rdata->dcb_outer_pri[i] = tx_start_params->dcb_outer_pri[i];







 return ecore_sp_post(sc, RAMROD_CMD_ID_COMMON_START_TRAFFIC, 0,
        data_mapping, NONE_CONNECTION_TYPE);
}
