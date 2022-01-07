
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct elink_params {struct bxe_softc* sc; } ;
struct elink_ets_params {size_t num_of_cos; TYPE_3__* cos; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;
struct TYPE_4__ {int bw; } ;
struct TYPE_5__ {TYPE_1__ bw_params; } ;
struct TYPE_6__ {scalar_t__ state; TYPE_2__ params; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 scalar_t__ elink_cos_state_bw ;

__attribute__((used)) static elink_status_t elink_ets_e3b0_get_total_bw(
 const struct elink_params *params,
 struct elink_ets_params *ets_params,
 uint16_t *total_bw)
{
 struct bxe_softc *sc = params->sc;
 uint8_t cos_idx = 0;
 uint8_t is_bw_cos_exist = 0;

 *total_bw = 0 ;

 for (cos_idx = 0; cos_idx < ets_params->num_of_cos; cos_idx++) {
  if (ets_params->cos[cos_idx].state == elink_cos_state_bw) {
   is_bw_cos_exist = 1;
   if (!ets_params->cos[cos_idx].params.bw_params.bw) {
    ELINK_DEBUG_P0(sc, "elink_ets_E3B0_config BW"
         "was set to 0\n");



    ets_params->cos[cos_idx].params.bw_params.bw
      = 1;
   }
   *total_bw +=
    ets_params->cos[cos_idx].params.bw_params.bw;
  }
 }


 if ((is_bw_cos_exist == 1) && (*total_bw != 100)) {
  if (*total_bw == 0) {
   ELINK_DEBUG_P0(sc,
      "elink_ets_E3B0_config total BW shouldn't be 0\n");
   return ELINK_STATUS_ERROR;
  }
  ELINK_DEBUG_P0(sc,
     "elink_ets_E3B0_config total BW should be 100\n");



 }
 return ELINK_STATUS_OK;
}
