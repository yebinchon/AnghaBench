
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int load_phase; } ;
struct TYPE_4__ {TYPE_1__ hw_init; } ;
struct ecore_func_state_params {TYPE_2__ params; int cmd; int * f_obj; int ramrod_flags; int * member_0; } ;
struct bxe_softc {int func_obj; } ;


 int ECORE_F_CMD_HW_INIT ;
 int RAMROD_COMP_WAIT ;
 int bit_set (int *,int ) ;
 int ecore_func_state_change (struct bxe_softc*,struct ecore_func_state_params*) ;

__attribute__((used)) static int
bxe_init_hw(struct bxe_softc *sc,
            uint32_t load_code)
{
    struct ecore_func_state_params func_params = { ((void*)0) };
    int rc;


    bit_set(&func_params.ramrod_flags, RAMROD_COMP_WAIT);

    func_params.f_obj = &sc->func_obj;
    func_params.cmd = ECORE_F_CMD_HW_INIT;

    func_params.params.hw_init.load_phase = load_code;





    rc = ecore_func_state_change(sc, &func_params);

    return (rc);
}
