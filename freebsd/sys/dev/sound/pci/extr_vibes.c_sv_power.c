
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int dummy; } ;


 int DEB (int ) ;
 int SV_ANALOG_OFF ;
 int SV_ANALOG_OFF_SPLL ;
 int SV_ANALOG_OFF_SRS ;
 int SV_DIGITAL_OFF ;
 int SV_DIGITAL_OFF_GP ;
 int SV_DIGITAL_OFF_MU ;
 int SV_DIGITAL_OFF_SYN ;
 int SV_REG_ANALOG_PWR ;
 int SV_REG_DIGITAL_PWR ;
 int printf (char*,int) ;
 int sv_indirect_get (struct sc_info*,int ) ;
 int sv_indirect_set (struct sc_info*,int ,int) ;

__attribute__((used)) static void
sv_power(struct sc_info *sc, int state)
{
 u_int8_t v;

        switch (state) {
        case 0:

  v = sv_indirect_get(sc, SV_REG_ANALOG_PWR) &~ SV_ANALOG_OFF;
  v |= SV_ANALOG_OFF_SRS | SV_ANALOG_OFF_SPLL;
  sv_indirect_set(sc, SV_REG_ANALOG_PWR, v);
  v = sv_indirect_get(sc, SV_REG_DIGITAL_PWR) &~ SV_DIGITAL_OFF;
  v |= SV_DIGITAL_OFF_SYN | SV_DIGITAL_OFF_MU | SV_DIGITAL_OFF_GP;
  sv_indirect_set(sc, SV_REG_DIGITAL_PWR, v);
                break;
        default:

  v = sv_indirect_get(sc, SV_REG_ANALOG_PWR) | SV_ANALOG_OFF;
  sv_indirect_set(sc, SV_REG_ANALOG_PWR, v);
  v = sv_indirect_get(sc, SV_REG_DIGITAL_PWR) | SV_DIGITAL_OFF;
  sv_indirect_set(sc, SV_REG_DIGITAL_PWR, SV_DIGITAL_OFF);
                break;
        }
        DEB(printf("Power state %d\n", state));
}
