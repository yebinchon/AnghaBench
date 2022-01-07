
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct elink_params {scalar_t__ port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 scalar_t__ DCBX_INVALID_COS ;
 scalar_t__ ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0 ;
 scalar_t__ ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1 ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;

__attribute__((used)) static elink_status_t elink_ets_e3b0_sp_pri_to_cos_set(const struct elink_params *params,
         uint8_t *sp_pri_to_cos, const uint8_t pri,
         const uint8_t cos_entry)
{
 struct bxe_softc *sc = params->sc;
 const uint8_t port = params->port;
 const uint8_t max_num_of_cos = (port) ? ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1 :
  ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0;

 if (pri >= max_num_of_cos) {
  ELINK_DEBUG_P0(sc, "elink_ets_e3b0_sp_pri_to_cos_set invalid "
     "parameter Illegal strict priority\n");
     return ELINK_STATUS_ERROR;
 }

 if (sp_pri_to_cos[pri] != DCBX_INVALID_COS) {
  ELINK_DEBUG_P0(sc, "elink_ets_e3b0_sp_pri_to_cos_set invalid "
       "parameter There can't be two COS's with "
       "the same strict pri\n");
  return ELINK_STATUS_ERROR;
 }

 sp_pri_to_cos[pri] = cos_entry;
 return ELINK_STATUS_OK;

}
