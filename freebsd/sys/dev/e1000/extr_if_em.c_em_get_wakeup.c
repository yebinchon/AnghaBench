
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int func; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_8__ {TYPE_2__ bus; TYPE_1__ mac; } ;
struct adapter {int wol; TYPE_3__ hw; void* has_amt; int has_manage; } ;
typedef int if_ctx_t ;
typedef int device_t ;
 int E1000_READ_REG (TYPE_3__*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_FUNC_1 ;
 int E1000_WUC ;
 int E1000_WUC_APME ;
 int E1000_WUFC_MAG ;
 int E1000_WUFC_MC ;
 int EM_82544_APME ;
 int EM_EEPROM_APME ;
 int NVM_INIT_CONTROL2_REG ;
 int NVM_INIT_CONTROL3_PORT_A ;
 int NVM_INIT_CONTROL3_PORT_B ;
 void* TRUE ;
 int e1000_enable_mng_pass_thru (TYPE_3__*) ;
 int e1000_read_nvm (TYPE_3__*,int ,int,int*) ;


 int global_quad_port_a ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int pci_get_device (int ) ;

__attribute__((used)) static void
em_get_wakeup(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 u16 eeprom_data = 0, device_id, apme_mask;

 adapter->has_manage = e1000_enable_mng_pass_thru(&adapter->hw);
 apme_mask = EM_EEPROM_APME;

 switch (adapter->hw.mac.type) {
 case 152:
 case 151:
  break;
 case 150:
  e1000_read_nvm(&adapter->hw,
      NVM_INIT_CONTROL2_REG, 1, &eeprom_data);
  apme_mask = EM_82544_APME;
  break;
 case 149:
 case 148:
  if (adapter->hw.bus.func == 1) {
   e1000_read_nvm(&adapter->hw,
       NVM_INIT_CONTROL3_PORT_B, 1, &eeprom_data);
   break;
  } else
   e1000_read_nvm(&adapter->hw,
       NVM_INIT_CONTROL3_PORT_A, 1, &eeprom_data);
  break;
 case 145:
 case 141:
  adapter->has_amt = TRUE;

 case 147:
 case 146:
 case 153:
  if (adapter->hw.bus.func == 1) {
   e1000_read_nvm(&adapter->hw,
       NVM_INIT_CONTROL3_PORT_B, 1, &eeprom_data);
   break;
  } else
   e1000_read_nvm(&adapter->hw,
       NVM_INIT_CONTROL3_PORT_A, 1, &eeprom_data);
  break;
 case 135:
 case 134:
 case 136:
 case 130:
 case 133:
 case 132:
 case 131:
 case 144:
 case 143:
 case 142:
 case 138:
 case 137:
 case 140:
 case 139:
 case 129:
 case 128:
  apme_mask = E1000_WUC_APME;
  adapter->has_amt = TRUE;
  eeprom_data = E1000_READ_REG(&adapter->hw, E1000_WUC);
  break;
 default:
  e1000_read_nvm(&adapter->hw,
      NVM_INIT_CONTROL3_PORT_A, 1, &eeprom_data);
  break;
 }
 if (eeprom_data & apme_mask)
  adapter->wol = (E1000_WUFC_MAG | E1000_WUFC_MC);





 device_id = pci_get_device(dev);
 switch (device_id) {
 case 159:
  adapter->wol = 0;
  break;
 case 161:
 case 160:


  if (E1000_READ_REG(&adapter->hw, E1000_STATUS) &
      E1000_STATUS_FUNC_1)
   adapter->wol = 0;
  break;
 case 158:

  if (global_quad_port_a != 0)
   adapter->wol = 0;

  if (++global_quad_port_a == 4)
   global_quad_port_a = 0;
  break;
 case 157:


  if (E1000_READ_REG(&adapter->hw, E1000_STATUS) &
      E1000_STATUS_FUNC_1)
   adapter->wol = 0;
  break;
 case 156:
 case 154:
 case 155:

  if (global_quad_port_a != 0)
   adapter->wol = 0;

  if (++global_quad_port_a == 4)
   global_quad_port_a = 0;
  break;
 }
 return;
}
