
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int CHIP_IS_E3B0 (struct bxe_softc*) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int elink_ets_e3b0_nig_disabled (struct elink_params const*,struct elink_vars const*) ;
 int elink_ets_e3b0_pbf_disabled (struct elink_params const*) ;

__attribute__((used)) static elink_status_t elink_ets_e3b0_disabled(const struct elink_params *params,
       const struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;

 if (!CHIP_IS_E3B0(sc)) {
  ELINK_DEBUG_P0(sc,
     "elink_ets_e3b0_disabled the chip isn't E3B0\n");
  return ELINK_STATUS_ERROR;
 }

 elink_ets_e3b0_nig_disabled(params, vars);

 elink_ets_e3b0_pbf_disabled(params);

 return ELINK_STATUS_OK;
}
