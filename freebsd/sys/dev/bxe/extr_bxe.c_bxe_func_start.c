
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ecore_func_start_params {int network_cos_mode; int sd_vlan_tag; int mf_mode; } ;
struct TYPE_6__ {struct ecore_func_start_params start; } ;
struct ecore_func_state_params {int cmd; int * f_obj; int ramrod_flags; TYPE_3__ params; int * member_0; } ;
struct TYPE_4__ {int mf_mode; } ;
struct TYPE_5__ {TYPE_1__ mf_info; } ;
struct bxe_softc {TYPE_2__ devinfo; int func_obj; } ;


 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int ECORE_F_CMD_START ;
 int FW_WRR ;
 int OVLAN (struct bxe_softc*) ;
 int RAMROD_COMP_WAIT ;
 int STATIC_COS ;
 int bit_set (int *,int ) ;
 int ecore_func_state_change (struct bxe_softc*,struct ecore_func_state_params*) ;

__attribute__((used)) static inline int
bxe_func_start(struct bxe_softc *sc)
{
    struct ecore_func_state_params func_params = { ((void*)0) };
    struct ecore_func_start_params *start_params = &func_params.params.start;


    bit_set(&func_params.ramrod_flags, RAMROD_COMP_WAIT);

    func_params.f_obj = &sc->func_obj;
    func_params.cmd = ECORE_F_CMD_START;


    start_params->mf_mode = sc->devinfo.mf_info.mf_mode;
    start_params->sd_vlan_tag = OVLAN(sc);

    if (CHIP_IS_E2(sc) || CHIP_IS_E3(sc)) {
        start_params->network_cos_mode = STATIC_COS;
    } else {
        start_params->network_cos_mode = FW_WRR;
    }




    return (ecore_func_state_change(sc, &func_params));
}
