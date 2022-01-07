
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_sp_obj {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_func_cmd { ____Placeholder_ecore_func_cmd } ecore_func_cmd ;


 int ecore_func_state_change_comp (struct bxe_softc*,struct ecore_func_sp_obj*,int) ;

__attribute__((used)) static int ecore_func_comp_cmd(struct bxe_softc *sc,
          struct ecore_func_sp_obj *o,
          enum ecore_func_cmd cmd)
{



 int rc = ecore_func_state_change_comp(sc, o, cmd);
 return rc;
}
