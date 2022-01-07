
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 scalar_t__ AMDTEMP_CURTMP_RANGE_ADJUST ;
 int AMDTEMP_REPTMP10H_CURTMP_MASK ;
 int AMDTEMP_REPTMP10H_CURTMP_SHIFT ;
 int AMDTEMP_REPTMP10H_TJSEL_MASK ;
 int AMDTEMP_REPTMP10H_TJSEL_SHIFT ;
 scalar_t__ AMDTEMP_ZERO_C_TO_K ;
 int CPUID_TO_FAMILY (int ) ;
 int cpu_id ;

__attribute__((used)) static uint32_t
amdtemp_decode_fam10h_to_16h(int32_t sc_offset, uint32_t val)
{
 uint32_t temp;


 temp = ((val >> AMDTEMP_REPTMP10H_CURTMP_SHIFT) &
     AMDTEMP_REPTMP10H_CURTMP_MASK) * 5 / 4;






 if (CPUID_TO_FAMILY(cpu_id) >= 0x15 &&
     ((val >> AMDTEMP_REPTMP10H_TJSEL_SHIFT) &
     AMDTEMP_REPTMP10H_TJSEL_MASK) == 0x3)
  temp -= AMDTEMP_CURTMP_RANGE_ADJUST;

 temp += AMDTEMP_ZERO_C_TO_K + sc_offset * 10;
 return (temp);
}
