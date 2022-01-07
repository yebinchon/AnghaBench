
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int load_phase; } ;
struct TYPE_4__ {TYPE_1__ hw_init; } ;
struct ecore_func_state_params {struct ecore_func_sp_obj* f_obj; TYPE_2__ params; } ;
struct ecore_func_sp_obj {int (* complete_cmd ) (struct bxe_softc*,struct ecore_func_sp_obj*,int ) ;struct ecore_func_sp_drv_ops* drv; } ;
struct ecore_func_sp_drv_ops {int (* gunzip_init ) (struct bxe_softc*) ;int (* init_fw ) (struct bxe_softc*) ;int (* gunzip_end ) (struct bxe_softc*) ;} ;
struct bxe_softc {int dummy; } ;


 int ECORE_ABS_FUNC_ID (struct bxe_softc*) ;
 int ECORE_ERR (char*,...) ;
 int ECORE_F_CMD_HW_INIT ;
 int ECORE_INVAL ;
 int ECORE_MSG (struct bxe_softc*,char*,int ,int) ;




 int ecore_func_init_cmn (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int ecore_func_init_cmn_chip (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int ecore_func_init_func (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int ecore_func_init_port (struct bxe_softc*,struct ecore_func_sp_drv_ops const*) ;
 int stub1 (struct bxe_softc*) ;
 int stub2 (struct bxe_softc*) ;
 int stub3 (struct bxe_softc*) ;
 int stub4 (struct bxe_softc*,struct ecore_func_sp_obj*,int ) ;

__attribute__((used)) static int ecore_func_hw_init(struct bxe_softc *sc,
         struct ecore_func_state_params *params)
{
 uint32_t load_code = params->params.hw_init.load_phase;
 struct ecore_func_sp_obj *o = params->f_obj;
 const struct ecore_func_sp_drv_ops *drv = o->drv;
 int rc = 0;

 ECORE_MSG(sc, "function %d  load_code %x\n",
    ECORE_ABS_FUNC_ID(sc), load_code);


 rc = drv->gunzip_init(sc);
 if (rc)
  return rc;


 rc = drv->init_fw(sc);
 if (rc) {
  ECORE_ERR("Error loading firmware\n");
  goto init_err;
 }


 switch (load_code) {
 case 130:
  rc = ecore_func_init_cmn_chip(sc, drv);
  if (rc)
   goto init_err;

  break;
 case 131:
  rc = ecore_func_init_cmn(sc, drv);
  if (rc)
   goto init_err;

  break;
 case 128:
  rc = ecore_func_init_port(sc, drv);
  if (rc)
   goto init_err;

  break;
 case 129:
  rc = ecore_func_init_func(sc, drv);
  if (rc)
   goto init_err;

  break;
 default:
  ECORE_ERR("Unknown load_code (0x%x) from MCP\n", load_code);
  rc = ECORE_INVAL;
 }

init_err:
 drv->gunzip_end(sc);




 if (!rc)
  o->complete_cmd(sc, o, ECORE_F_CMD_HW_INIT);

 return rc;
}
