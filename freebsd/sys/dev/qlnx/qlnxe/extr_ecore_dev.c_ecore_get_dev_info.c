
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rel_pf_id; struct ecore_dev* p_dev; } ;
struct ecore_dev {int vendor_id; int device_id; int chip_num; int num_hwfns; int b_is_emul_full; struct ecore_hwfn* hwfns; void* chip_metal; void* chip_bond_id; void* chip_rev; int type; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int CHIP_BOND_ID ;
 int CHIP_METAL ;
 int CHIP_NUM ;
 int CHIP_REV ;
 scalar_t__ CHIP_REV_IS_EMUL (struct ecore_dev*) ;
 int DP_INFO (struct ecore_hwfn*,char*,char*,void*,int,int,void*,void*,void*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,...) ;
 int ECORE_ABORTED ;
 int ECORE_DEV_ID_MASK ;



 int ECORE_DEV_TYPE_AH ;
 int ECORE_DEV_TYPE_BB ;
 int ECORE_DEV_TYPE_E5 ;
 scalar_t__ ECORE_IS_AH (struct ecore_dev*) ;
 scalar_t__ ECORE_IS_BB (struct ecore_dev*) ;
 scalar_t__ ECORE_IS_BB_A0 (struct ecore_dev*) ;
 int ECORE_SUCCESS ;
 scalar_t__ GET_FIELD (int,int ) ;
 int MISCS_REG_CHIP_METAL ;
 int MISCS_REG_CHIP_NUM ;
 int MISCS_REG_CHIP_REV ;
 int MISCS_REG_CHIP_TEST_REG ;
 int MISCS_REG_CMT_ENABLED_FOR_PAIR ;
 int MISCS_REG_ECO_RESERVED ;
 int MISCS_REG_PLL_MAIN_CTRL_4 ;
 int OSAL_PCI_READ_CONFIG_WORD (struct ecore_dev*,int ,int*) ;
 int PCICFG_DEVICE_ID_OFFSET ;
 int PCICFG_VENDOR_ID_OFFSET ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_get_dev_info(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 u16 device_id_mask;
 u32 tmp;


 OSAL_PCI_READ_CONFIG_WORD(p_dev, PCICFG_VENDOR_ID_OFFSET,
      &p_dev->vendor_id);
 OSAL_PCI_READ_CONFIG_WORD(p_dev, PCICFG_DEVICE_ID_OFFSET,
      &p_dev->device_id);


 device_id_mask = p_dev->device_id & ECORE_DEV_ID_MASK;
 switch (device_id_mask) {
 case 129:
  p_dev->type = ECORE_DEV_TYPE_BB;
  break;
 case 130:
  p_dev->type = ECORE_DEV_TYPE_AH;
  break;
 case 128:
  p_dev->type = ECORE_DEV_TYPE_E5;
  break;
 default:
  DP_NOTICE(p_hwfn, 1, "Unknown device id 0x%x\n",
     p_dev->device_id);
  return ECORE_ABORTED;
 }

 tmp = ecore_rd(p_hwfn, p_ptt, MISCS_REG_CHIP_NUM);
 p_dev->chip_num = (u16)GET_FIELD(tmp, CHIP_NUM);
 tmp = ecore_rd(p_hwfn, p_ptt, MISCS_REG_CHIP_REV);
 p_dev->chip_rev = (u8)GET_FIELD(tmp, CHIP_REV);


 tmp = ecore_rd(p_hwfn, p_ptt, MISCS_REG_CMT_ENABLED_FOR_PAIR);

 if (tmp & (1 << p_hwfn->rel_pf_id)) {
  DP_NOTICE(p_dev->hwfns, 0, "device in CMT mode\n");
  p_dev->num_hwfns = 2;
 } else {
  p_dev->num_hwfns = 1;
 }


 if (CHIP_REV_IS_EMUL(p_dev)) {



  DP_NOTICE(p_dev->hwfns, 0, "device on emul - assume no CMT\n");
  p_dev->num_hwfns = 1;
 }


 tmp = ecore_rd(p_hwfn, p_ptt, MISCS_REG_CHIP_TEST_REG);
 p_dev->chip_bond_id = (u8)GET_FIELD(tmp, CHIP_BOND_ID);
 tmp = ecore_rd(p_hwfn, p_ptt, MISCS_REG_CHIP_METAL);
 p_dev->chip_metal = (u8)GET_FIELD(tmp, CHIP_METAL);

 DP_INFO(p_dev->hwfns,
  "Chip details - %s %c%d, Num: %04x Rev: %02x Bond id: %02x Metal: %02x\n",
  ECORE_IS_BB(p_dev) ? "BB" : "AH",
  'A' + p_dev->chip_rev, (int)p_dev->chip_metal,
  p_dev->chip_num, p_dev->chip_rev, p_dev->chip_bond_id,
  p_dev->chip_metal);

 if (ECORE_IS_BB_A0(p_dev)) {
  DP_NOTICE(p_dev->hwfns, 0,
     "The chip type/rev (BB A0) is not supported!\n");
  return ECORE_ABORTED;
 }


 if (CHIP_REV_IS_EMUL(p_dev) && ECORE_IS_AH(p_dev))
  ecore_wr(p_hwfn, p_ptt, MISCS_REG_PLL_MAIN_CTRL_4, 0x1);

 if (CHIP_REV_IS_EMUL(p_dev)) {
  tmp = ecore_rd(p_hwfn, p_ptt, MISCS_REG_ECO_RESERVED);
  if (tmp & (1 << 29)) {
   DP_NOTICE(p_hwfn, 0, "Emulation: Running on a FULL build\n");
   p_dev->b_is_emul_full = 1;
  } else {
   DP_NOTICE(p_hwfn, 0, "Emulation: Running on a REDUCED build\n");
  }
 }


 return ECORE_SUCCESS;
}
