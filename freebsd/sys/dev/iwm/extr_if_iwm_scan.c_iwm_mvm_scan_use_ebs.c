
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_ucode_capabilities {int flags; } ;
struct TYPE_2__ {struct iwm_ucode_capabilities ucode_capa; } ;
struct iwm_softc {scalar_t__ last_ebs_successful; TYPE_1__ sc_fw; } ;
typedef int boolean_t ;


 int IWM_UCODE_TLV_FLAGS_EBS_SUPPORT ;

__attribute__((used)) static boolean_t
iwm_mvm_scan_use_ebs(struct iwm_softc *sc)
{
 const struct iwm_ucode_capabilities *capa = &sc->sc_fw.ucode_capa;







 return ((capa->flags & IWM_UCODE_TLV_FLAGS_EBS_SUPPORT) &&
  sc->last_ebs_successful);
}
