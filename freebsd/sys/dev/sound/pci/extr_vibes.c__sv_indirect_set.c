
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int dev; int enh_sh; int enh_st; } ;


 int SV_CM_DATA ;
 int SV_CM_INDEX ;
 int SV_CM_INDEX_MCE ;
 int SV_REG_ADC_PLLM ;
 int SV_REG_ANALOG_PWR ;
 int SV_REG_FORMAT ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int device_printf (int ,char*,int ,int ,int ,int) ;
 int sv_indirect_get (struct sc_info*,int ) ;

__attribute__((used)) static void
_sv_indirect_set(struct sc_info *sc, u_int8_t reg, u_int8_t val, int line)
{
 if (reg == SV_REG_FORMAT || reg == SV_REG_ANALOG_PWR)
  reg |= SV_CM_INDEX_MCE;

 bus_space_write_1(sc->enh_st, sc->enh_sh, SV_CM_INDEX, reg);
 bus_space_write_1(sc->enh_st, sc->enh_sh, SV_CM_DATA, val);

 reg &= ~SV_CM_INDEX_MCE;
 if (reg != SV_REG_ADC_PLLM) {
  u_int8_t n;
  n = sv_indirect_get(sc, reg);
  if (n != val) {
   device_printf(sc->dev, "sv_indirect_set register 0x%02x %d != %d line %d\n", reg, n, val, line);
  }
 }
}
