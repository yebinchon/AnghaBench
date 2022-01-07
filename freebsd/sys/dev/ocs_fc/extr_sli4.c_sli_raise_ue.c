
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint32_t ;
struct TYPE_6__ {int os; } ;
typedef TYPE_1__ sli4_t ;
typedef int int32_t ;


 int FDD ;


 scalar_t__ SLI4_IF_TYPE_BE3_SKH_PF ;
 scalar_t__ SLI4_IF_TYPE_LANCER_FC_ETH ;
 unsigned int SLI4_PHYDEV_CONTROL_DD ;
 unsigned int SLI4_PHYDEV_CONTROL_FRST ;
 int SLI4_REG_PHYSDEV_CONTROL ;
 int SLI4_REG_SLIPORT_CONTROL ;
 int SLI4_REG_SW_UE_CSR1 ;
 int SLI4_REG_SW_UE_CSR2 ;
 unsigned int SLI4_SLIPORT_CONTROL_FDD ;
 unsigned int SLI4_SLIPORT_CONTROL_IP ;
 int SLI4_SW_UE_REG ;
 unsigned int ocs_config_read32 (int ,int ) ;
 int ocs_config_write32 (int ,int ,unsigned int) ;
 int ocs_log_test (int ,char*,scalar_t__) ;
 scalar_t__ sli_get_asic_type (TYPE_1__*) ;
 scalar_t__ sli_get_if_type (TYPE_1__*) ;
 int sli_reg_write (TYPE_1__*,int ,unsigned int) ;

int32_t sli_raise_ue(sli4_t *sli4, uint8_t dump)
{

 if (SLI4_IF_TYPE_BE3_SKH_PF == sli_get_if_type(sli4)) {
  switch(sli_get_asic_type(sli4)) {
  case 129: {
   sli_reg_write(sli4, SLI4_REG_SW_UE_CSR1, 0xffffffff);
   sli_reg_write(sli4, SLI4_REG_SW_UE_CSR2, 0);
   break;
  }
  case 128: {
   uint32_t value;
   value = ocs_config_read32(sli4->os, SLI4_SW_UE_REG);
   ocs_config_write32(sli4->os, SLI4_SW_UE_REG, (value | (1U << 24)));
   break;
  }
  default:
   ocs_log_test(sli4->os, "invalid asic type %d\n", sli_get_asic_type(sli4));
   return -1;
  }
 } else if (SLI4_IF_TYPE_LANCER_FC_ETH == sli_get_if_type(sli4)) {
  if (dump == 2) {
   sli_reg_write(sli4, SLI4_REG_SLIPORT_CONTROL, SLI4_SLIPORT_CONTROL_FDD | SLI4_SLIPORT_CONTROL_IP);
  } else {
   uint32_t value = SLI4_PHYDEV_CONTROL_FRST;
   if (dump == 1) {
    value |= SLI4_PHYDEV_CONTROL_DD;
   }
   sli_reg_write(sli4, SLI4_REG_PHYSDEV_CONTROL, value);
  }
 } else {
  ocs_log_test(sli4->os, "invalid iftype=%d\n", sli_get_if_type(sli4));
  return -1;
 }
 return 0;
}
