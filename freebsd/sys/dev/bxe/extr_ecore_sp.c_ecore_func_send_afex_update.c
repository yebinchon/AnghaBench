
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct function_update_data {int vif_id_change_flg; int afex_default_vlan_change_flg; int allowed_priorities_change_flg; int allowed_priorities; void* afex_default_vlan; void* vif_id; int echo; } ;
struct ecore_func_afex_update_params {int allowed_priorities; int afex_default_vlan; int vif_id; } ;
struct TYPE_2__ {struct ecore_func_afex_update_params afex_update; } ;
struct ecore_func_state_params {TYPE_1__ params; struct ecore_func_sp_obj* f_obj; } ;
struct ecore_func_sp_obj {int afex_rdata_mapping; scalar_t__ afex_rdata; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;


 int AFEX_UPDATE ;
 void* ECORE_CPU_TO_LE16 (int ) ;
 int ECORE_MEMSET (struct function_update_data*,int ,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,void*,void*,int ) ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static inline int ecore_func_send_afex_update(struct bxe_softc *sc,
      struct ecore_func_state_params *params)
{
 struct ecore_func_sp_obj *o = params->f_obj;
 struct function_update_data *rdata =
  (struct function_update_data *)o->afex_rdata;
 ecore_dma_addr_t data_mapping = o->afex_rdata_mapping;
 struct ecore_func_afex_update_params *afex_update_params =
  &params->params.afex_update;

 ECORE_MEMSET(rdata, 0, sizeof(*rdata));


 rdata->vif_id_change_flg = 1;
 rdata->vif_id = ECORE_CPU_TO_LE16(afex_update_params->vif_id);
 rdata->afex_default_vlan_change_flg = 1;
 rdata->afex_default_vlan =
  ECORE_CPU_TO_LE16(afex_update_params->afex_default_vlan);
 rdata->allowed_priorities_change_flg = 1;
 rdata->allowed_priorities = afex_update_params->allowed_priorities;
 rdata->echo = AFEX_UPDATE;







 ECORE_MSG(sc,
    "afex: sending func_update vif_id 0x%x dvlan 0x%x prio 0x%x\n",
    rdata->vif_id,
    rdata->afex_default_vlan, rdata->allowed_priorities);

 return ecore_sp_post(sc, RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, 0,
        data_mapping, NONE_CONNECTION_TYPE);
}
