
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bhnd_chipid {int chip_id; } ;
typedef int bus_size_t ;


 int BHND_CHIPID_BCM5365 ;
 int CHIPC_CLKC_M2 ;
 int CHIPC_CLKC_M3 ;
 int CHIPC_CLKC_SB ;







bus_size_t
bhnd_pwrctl_cpu_clkreg_m(const struct bhnd_chipid *cid,
    uint8_t pll_type, uint32_t *fixed_hz)
{
 switch (pll_type) {
 case 133:
 case 131:
 case 129:
 case 128:
  return (CHIPC_CLKC_M3);

 case 130:

  if (fixed_hz != ((void*)0))
   *fixed_hz = 200 * 1000 * 1000;
  return (0);

 case 132:
  if (cid->chip_id == BHND_CHIPID_BCM5365) {

   if (fixed_hz != ((void*)0))
    *fixed_hz = 200 * 1000 * 1000;
   return (0);
  }

  return (CHIPC_CLKC_M2);

 default:
  return (CHIPC_CLKC_SB);
 }
}
