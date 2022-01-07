
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int DELAY (int) ;
 int L3CR_L3CLKEN ;
 int L3CR_L3E ;
 int L3CR_L3I ;
 int L3CR_L3PE ;
 int SPR_L3CR ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int powerpc_sync () ;

__attribute__((used)) static register_t
mpc745x_l3_enable(register_t l3cr_config)
{
 register_t ccr;

 ccr = mfspr(SPR_L3CR);
 if (ccr & L3CR_L3E)
  return (ccr);


 ccr = l3cr_config & ~(L3CR_L3E | L3CR_L3I | L3CR_L3PE | L3CR_L3CLKEN);
 mtspr(SPR_L3CR, ccr);
 ccr |= 0x4000000;
 mtspr(SPR_L3CR, ccr);
 ccr |= L3CR_L3CLKEN;
 mtspr(SPR_L3CR, ccr);
 mtspr(SPR_L3CR, ccr | L3CR_L3I);
 while (mfspr(SPR_L3CR) & L3CR_L3I)
  ;
 mtspr(SPR_L3CR, ccr & ~L3CR_L3CLKEN);
 powerpc_sync();
 DELAY(100);
 mtspr(SPR_L3CR, ccr);
 powerpc_sync();
 DELAY(100);
 ccr |= L3CR_L3E;
 mtspr(SPR_L3CR, ccr);
 powerpc_sync();

 return(ccr);
}
