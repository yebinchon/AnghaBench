
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; } ;





 int CH_ERR (struct adapter*,char*,unsigned int) ;
 unsigned int FW_T4VF_REGMAP_SIZE ;
 int IS_VF ;
 unsigned int T4_REGMAP_SIZE ;
 unsigned int T5_REGMAP_SIZE ;
 unsigned int chip_id (struct adapter*) ;

unsigned int t4_get_regs_len(struct adapter *adapter)
{
 unsigned int chip_version = chip_id(adapter);

 switch (chip_version) {
 case 130:
  if (adapter->flags & IS_VF)
   return FW_T4VF_REGMAP_SIZE;
  return T4_REGMAP_SIZE;

 case 129:
 case 128:
  if (adapter->flags & IS_VF)
   return FW_T4VF_REGMAP_SIZE;
  return T5_REGMAP_SIZE;
 }

 CH_ERR(adapter,
  "Unsupported chip version %d\n", chip_version);
 return 0;
}
