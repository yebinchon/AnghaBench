
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct iwm_softc {int sc_dev; TYPE_1__* cfg; } ;
struct iwm_nvm_data {int * hw_addr; } ;
struct TYPE_4__ {scalar_t__ mac_addr_from_csr; } ;
struct TYPE_3__ {scalar_t__ device_family; } ;


 int EINVAL ;
 scalar_t__ IWM_DEVICE_FAMILY_8000 ;
 int IWM_HW_ADDR ;
 TYPE_2__* cfg ;
 int device_printf (int ,char*) ;
 int iwm_is_valid_ether_addr (int *) ;
 int iwm_set_hw_address_family_8000 (struct iwm_softc*,struct iwm_nvm_data*,int const*,int const*) ;
 int iwm_set_hw_address_from_csr (struct iwm_softc*,struct iwm_nvm_data*) ;

__attribute__((used)) static int
iwm_set_hw_address(struct iwm_softc *sc, struct iwm_nvm_data *data,
     const uint16_t *nvm_hw, const uint16_t *mac_override)
{





 if (sc->cfg->device_family < IWM_DEVICE_FAMILY_8000) {
  const uint8_t *hw_addr = (const uint8_t *)(nvm_hw + IWM_HW_ADDR);


  data->hw_addr[0] = hw_addr[1];
  data->hw_addr[1] = hw_addr[0];
  data->hw_addr[2] = hw_addr[3];
  data->hw_addr[3] = hw_addr[2];
  data->hw_addr[4] = hw_addr[5];
  data->hw_addr[5] = hw_addr[4];
 } else {
  iwm_set_hw_address_family_8000(sc, data, mac_override, nvm_hw);
 }

 if (!iwm_is_valid_ether_addr(data->hw_addr)) {
  device_printf(sc->sc_dev, "no valid mac address was found\n");
  return EINVAL;
 }

 return 0;
}
