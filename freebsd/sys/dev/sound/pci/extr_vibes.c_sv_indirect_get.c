
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int enh_sh; int enh_st; } ;


 int SV_CM_DATA ;
 int SV_CM_INDEX ;
 int SV_CM_INDEX_MCE ;
 int SV_REG_ANALOG_PWR ;
 int SV_REG_FORMAT ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;

__attribute__((used)) static u_int8_t
sv_indirect_get(struct sc_info *sc, u_int8_t reg)
{
 if (reg == SV_REG_FORMAT || reg == SV_REG_ANALOG_PWR)
  reg |= SV_CM_INDEX_MCE;

 bus_space_write_1(sc->enh_st, sc->enh_sh, SV_CM_INDEX, reg);
 return bus_space_read_1(sc->enh_st, sc->enh_sh, SV_CM_DATA);
}
