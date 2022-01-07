
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int register_t ;


 int L2CR_L2E ;
 int L2CR_L2I ;
 int L2CR_L2IP ;


 int SPR_L2CR ;
 int mfpvr () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int powerpc_sync () ;

__attribute__((used)) static register_t
mpc74xx_l2_enable(register_t l2cr_config)
{
 register_t ccr, bit;
 uint16_t vers;

 vers = mfpvr() >> 16;
 switch (vers) {
 case 129:
 case 128:
  bit = L2CR_L2IP;
  break;
 default:
  bit = L2CR_L2I;
  break;
 }

 ccr = mfspr(SPR_L2CR);
 if (ccr & L2CR_L2E)
  return (ccr);


 ccr = l2cr_config & ~L2CR_L2E;
 mtspr(SPR_L2CR, ccr | L2CR_L2I);
 do {
  ccr = mfspr(SPR_L2CR);
 } while (ccr & bit);
 powerpc_sync();
 mtspr(SPR_L2CR, l2cr_config);
 powerpc_sync();

 return (l2cr_config);
}
