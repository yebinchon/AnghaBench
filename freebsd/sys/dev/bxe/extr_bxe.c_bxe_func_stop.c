
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_state_params {int ramrod_flags; int cmd; int * f_obj; int * member_0; } ;
struct bxe_softc {int func_obj; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;
 int ECORE_F_CMD_STOP ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_DRV_CLR_ONLY ;
 int bxe_set_bit (int ,int *) ;
 int ecore_func_state_change (struct bxe_softc*,struct ecore_func_state_params*) ;

__attribute__((used)) static int
bxe_func_stop(struct bxe_softc *sc)
{
    struct ecore_func_state_params func_params = { ((void*)0) };
    int rc;


    bxe_set_bit(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
    func_params.f_obj = &sc->func_obj;
    func_params.cmd = ECORE_F_CMD_STOP;







    rc = ecore_func_state_change(sc, &func_params);
    if (rc) {
        BLOGE(sc, "FUNC_STOP ramrod failed. "
                  "Running a dry transaction (%d)\n", rc);
        bxe_set_bit(RAMROD_DRV_CLR_ONLY, &func_params.ramrod_flags);
        return (ecore_func_state_change(sc, &func_params));
    }

    return (0);
}
