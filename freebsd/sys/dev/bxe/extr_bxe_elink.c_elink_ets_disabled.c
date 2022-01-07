
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 scalar_t__ CHIP_IS_E2 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3A0 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bxe_softc*) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int elink_ets_e2e3a0_disabled (struct elink_params*) ;
 int elink_ets_e3b0_disabled (struct elink_params*,struct elink_vars*) ;

elink_status_t elink_ets_disabled(struct elink_params *params,
        struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 elink_status_t elink_status = ELINK_STATUS_OK;

 if ((CHIP_IS_E2(sc)) || (CHIP_IS_E3A0(sc)))
  elink_ets_e2e3a0_disabled(params);
 else if (CHIP_IS_E3B0(sc))
  elink_status = elink_ets_e3b0_disabled(params, vars);
 else {
  ELINK_DEBUG_P0(sc, "elink_ets_disabled - chip not supported\n");
  return ELINK_STATUS_ERROR;
 }

 return elink_status;
}
