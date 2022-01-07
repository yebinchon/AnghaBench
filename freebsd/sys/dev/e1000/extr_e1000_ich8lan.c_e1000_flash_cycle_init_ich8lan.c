
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flcerr; int dael; int flcdone; int flcinprog; int fldesvalid; } ;
union ich8_hws_flash_status {int regval; TYPE_1__ hsf_status; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_ERR_NVM ;
 void* E1000_READ_FLASH_REG16 (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_FLASH_REG (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_FLASH_REG16 (struct e1000_hw*,int ,int) ;
 int ICH_FLASH_HSFSTS ;
 scalar_t__ ICH_FLASH_READ_COMMAND_TIMEOUT ;
 scalar_t__ e1000_pch_spt ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_flash_cycle_init_ich8lan(struct e1000_hw *hw)
{
 union ich8_hws_flash_status hsfsts;
 s32 ret_val = -E1000_ERR_NVM;

 DEBUGFUNC("e1000_flash_cycle_init_ich8lan");

 hsfsts.regval = E1000_READ_FLASH_REG16(hw, ICH_FLASH_HSFSTS);


 if (!hsfsts.hsf_status.fldesvalid) {
  DEBUGOUT("Flash descriptor invalid.  SW Sequencing must be used.\n");
  return -E1000_ERR_NVM;
 }


 hsfsts.hsf_status.flcerr = 1;
 hsfsts.hsf_status.dael = 1;
 if (hw->mac.type >= e1000_pch_spt)
  E1000_WRITE_FLASH_REG(hw, ICH_FLASH_HSFSTS,
          hsfsts.regval & 0xFFFF);
 else
  E1000_WRITE_FLASH_REG16(hw, ICH_FLASH_HSFSTS, hsfsts.regval);
 if (!hsfsts.hsf_status.flcinprog) {




  hsfsts.hsf_status.flcdone = 1;
  if (hw->mac.type >= e1000_pch_spt)
   E1000_WRITE_FLASH_REG(hw, ICH_FLASH_HSFSTS,
           hsfsts.regval & 0xFFFF);
  else
   E1000_WRITE_FLASH_REG16(hw, ICH_FLASH_HSFSTS,
      hsfsts.regval);
  ret_val = E1000_SUCCESS;
 } else {
  s32 i;




  for (i = 0; i < ICH_FLASH_READ_COMMAND_TIMEOUT; i++) {
   hsfsts.regval = E1000_READ_FLASH_REG16(hw,
             ICH_FLASH_HSFSTS);
   if (!hsfsts.hsf_status.flcinprog) {
    ret_val = E1000_SUCCESS;
    break;
   }
   usec_delay(1);
  }
  if (ret_val == E1000_SUCCESS) {



   hsfsts.hsf_status.flcdone = 1;
   if (hw->mac.type >= e1000_pch_spt)
    E1000_WRITE_FLASH_REG(hw, ICH_FLASH_HSFSTS,
            hsfsts.regval & 0xFFFF);
   else
    E1000_WRITE_FLASH_REG16(hw, ICH_FLASH_HSFSTS,
       hsfsts.regval);
  } else {
   DEBUGOUT("Flash controller busy, cannot get access\n");
  }
 }

 return ret_val;
}
