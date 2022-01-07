
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bhnd_chipid {int dummy; } ;
typedef int bus_size_t ;


 int CHIPC_CLKC_M2 ;
 int CHIPC_CLKC_M3 ;
 int CHIPC_CLKC_SB ;



bus_size_t
bhnd_pwrctl_si_clkreg_m(const struct bhnd_chipid *cid,
    uint8_t pll_type, uint32_t *fixed_hz)
{
 switch (pll_type) {
 case 128:
  return (CHIPC_CLKC_M3);
 case 129:
  return (CHIPC_CLKC_M2);
 default:
  return (CHIPC_CLKC_SB);
 }
}
