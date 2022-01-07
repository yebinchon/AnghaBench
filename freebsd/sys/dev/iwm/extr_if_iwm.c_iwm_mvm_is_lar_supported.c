
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwm_softc {TYPE_2__* cfg; TYPE_1__* nvm_data; } ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ device_family; } ;
struct TYPE_3__ {int lar_enabled; } ;


 int FALSE ;
 scalar_t__ IWM_DEVICE_FAMILY_8000 ;
 int IWM_UCODE_TLV_CAPA_LAR_SUPPORT ;
 int iwm_fw_has_capa (struct iwm_softc*,int ) ;
 scalar_t__ iwm_lar_disable ;

__attribute__((used)) static boolean_t
iwm_mvm_is_lar_supported(struct iwm_softc *sc)
{
 boolean_t nvm_lar = sc->nvm_data->lar_enabled;
 boolean_t tlv_lar = iwm_fw_has_capa(sc, IWM_UCODE_TLV_CAPA_LAR_SUPPORT);

 if (iwm_lar_disable)
  return FALSE;





 if (sc->cfg->device_family >= IWM_DEVICE_FAMILY_8000)
  return nvm_lar && tlv_lar;
 else
  return tlv_lar;
}
