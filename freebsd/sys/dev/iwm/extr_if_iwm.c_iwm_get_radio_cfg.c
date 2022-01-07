
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct iwm_softc {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 scalar_t__ IWM_DEVICE_FAMILY_8000 ;
 int IWM_RADIO_CFG ;
 int IWM_RADIO_CFG_8000 ;
 int le16_to_cpup (int const*) ;
 int le32_to_cpup (int const*) ;

__attribute__((used)) static int
iwm_get_radio_cfg(const struct iwm_softc *sc, const uint16_t *nvm_sw,
    const uint16_t *phy_sku)
{
        if (sc->cfg->device_family < IWM_DEVICE_FAMILY_8000)
                return le16_to_cpup(nvm_sw + IWM_RADIO_CFG);

        return le32_to_cpup((const uint32_t *)(phy_sku + IWM_RADIO_CFG_8000));
}
