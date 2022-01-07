
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ecore_func_afex_viflists_params {int afex_vif_list_command; int func_to_clear; int func_bit_map; int vif_list_index; } ;
struct TYPE_2__ {struct ecore_func_afex_viflists_params afex_viflists; } ;
struct ecore_func_state_params {TYPE_1__ params; struct ecore_func_sp_obj* f_obj; } ;
struct ecore_func_sp_obj {scalar_t__ afex_rdata; } ;
struct bxe_softc {int dummy; } ;
struct afex_vif_list_ramrod_data {int func_to_clear; int func_bit_map; int vif_list_index; int afex_vif_list_command; int echo; } ;


 int ECORE_CPU_TO_LE16 (int ) ;
 int ECORE_MEMSET (struct afex_vif_list_ramrod_data*,int ,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,int ,int ,int ,int ) ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_AFEX_VIF_LISTS ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static
inline int ecore_func_send_afex_viflists(struct bxe_softc *sc,
      struct ecore_func_state_params *params)
{
 struct ecore_func_sp_obj *o = params->f_obj;
 struct afex_vif_list_ramrod_data *rdata =
  (struct afex_vif_list_ramrod_data *)o->afex_rdata;
 struct ecore_func_afex_viflists_params *afex_vif_params =
  &params->params.afex_viflists;
 uint64_t *p_rdata = (uint64_t *)rdata;

 ECORE_MEMSET(rdata, 0, sizeof(*rdata));


 rdata->vif_list_index = ECORE_CPU_TO_LE16(afex_vif_params->vif_list_index);
 rdata->func_bit_map = afex_vif_params->func_bit_map;
 rdata->afex_vif_list_command = afex_vif_params->afex_vif_list_command;
 rdata->func_to_clear = afex_vif_params->func_to_clear;


 rdata->echo = afex_vif_params->afex_vif_list_command;

 ECORE_MSG(sc, "afex: ramrod lists, cmd 0x%x index 0x%x func_bit_map 0x%x func_to_clr 0x%x\n",
    rdata->afex_vif_list_command, rdata->vif_list_index,
    rdata->func_bit_map, rdata->func_to_clear);
 return ecore_sp_post(sc, RAMROD_CMD_ID_COMMON_AFEX_VIF_LISTS, 0,
        *p_rdata, NONE_CONNECTION_TYPE);
}
