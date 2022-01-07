
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
typedef int boolean_t ;


 int IWM_UCODE_TLV_CAPA_DS_PARAM_SET_IE_SUPPORT ;
 int iwm_fw_has_capa (struct iwm_softc*,int ) ;

__attribute__((used)) static inline boolean_t
iwm_mvm_rrm_scan_needed(struct iwm_softc *sc)
{

 return iwm_fw_has_capa(sc, IWM_UCODE_TLV_CAPA_DS_PARAM_SET_IE_SUPPORT);
}
