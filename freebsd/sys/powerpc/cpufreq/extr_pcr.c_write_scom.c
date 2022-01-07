
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int register_t ;


 int PSL_EE ;
 int SCOMC_WRITE ;
 int SPR_SCOMC ;
 int SPR_SCOMD ;
 int isync () ;
 int mfmsr () ;
 int mtmsr (int) ;
 int mtspr (int ,int) ;
 int mtspr64 (int ,int,int,int) ;

__attribute__((used)) static void
write_scom(register_t address, uint64_t value)
{
 register_t msr;

 register_t hi, lo, scratch;


 msr = mfmsr();
 mtmsr(msr & ~PSL_EE); isync();




 hi = (value >> 32) & 0xffffffff;
 lo = value & 0xffffffff;
 mtspr64(SPR_SCOMD, hi, lo, scratch);

 isync();
 mtspr(SPR_SCOMC, address | SCOMC_WRITE);
 isync();

 mtmsr(msr); isync();
}
