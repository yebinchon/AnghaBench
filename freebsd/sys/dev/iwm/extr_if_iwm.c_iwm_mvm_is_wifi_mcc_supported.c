
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
typedef int boolean_t ;


 int IWM_UCODE_TLV_API_WIFI_MCC_UPDATE ;
 int IWM_UCODE_TLV_CAPA_LAR_MULTI_MCC ;
 scalar_t__ iwm_fw_has_api (struct iwm_softc*,int ) ;
 scalar_t__ iwm_fw_has_capa (struct iwm_softc*,int ) ;

__attribute__((used)) static boolean_t
iwm_mvm_is_wifi_mcc_supported(struct iwm_softc *sc)
{
 return iwm_fw_has_api(sc, IWM_UCODE_TLV_API_WIFI_MCC_UPDATE) ||
     iwm_fw_has_capa(sc, IWM_UCODE_TLV_CAPA_LAR_MULTI_MCC);
}
