
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int reset_phase; } ;
struct TYPE_4__ {TYPE_1__ hw_reset; } ;
struct ecore_func_state_params {struct ecore_func_sp_obj* f_obj; TYPE_2__ params; } ;
struct ecore_func_sp_obj {int (* complete_cmd ) (struct bxe_softc*,struct ecore_func_sp_obj*,int ) ;struct ecore_func_sp_drv_ops* drv; } ;
struct ecore_func_sp_drv_ops {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ABS_FUNC_ID (struct bxe_softc*) ;
 int ECORE_ERR (char*,int) ;
 int ECORE_F_CMD_HW_RESET ;
 int ECORE_MSG (struct bxe_softc*,char*,int ,int) ;
 int ECORE_SUCCESS ;



 int ecore_func_reset_cmn (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int ecore_func_reset_func (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int ecore_func_reset_port (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int stub1 (struct bxe_softc*,struct ecore_func_sp_obj*,int ) ;

__attribute__((used)) static inline int ecore_func_hw_reset(struct bxe_softc *sc,
          struct ecore_func_state_params *params)
{
 uint32_t reset_phase = params->params.hw_reset.reset_phase;
 struct ecore_func_sp_obj *o = params->f_obj;
 const struct ecore_func_sp_drv_ops *drv = o->drv;

 ECORE_MSG(sc, "function %d  reset_phase %x\n", ECORE_ABS_FUNC_ID(sc),
    reset_phase);

 switch (reset_phase) {
 case 130:
  ecore_func_reset_cmn(sc, drv);
  break;
 case 128:
  ecore_func_reset_port(sc, drv);
  break;
 case 129:
  ecore_func_reset_func(sc, drv);
  break;
 default:
  ECORE_ERR("Unknown reset_phase (0x%x) from MCP\n",
     reset_phase);
  break;
 }


 o->complete_cmd(sc, o, ECORE_F_CMD_HW_RESET);

 return ECORE_SUCCESS;
}
