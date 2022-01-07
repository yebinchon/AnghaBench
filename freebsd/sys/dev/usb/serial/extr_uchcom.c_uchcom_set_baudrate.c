
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uchcom_softc {int dummy; } ;
struct uchcom_divider {int dv_prescaler; int dv_mod; int dv_div; } ;


 int UCHCOM_REG_BPS_DIV ;
 int UCHCOM_REG_BPS_MOD ;
 int UCHCOM_REG_BPS_PAD ;
 int UCHCOM_REG_BPS_PRE ;
 scalar_t__ uchcom_calc_divider_settings (struct uchcom_divider*,int ) ;
 int uchcom_write_reg (struct uchcom_softc*,int ,int,int ,int ) ;

__attribute__((used)) static void
uchcom_set_baudrate(struct uchcom_softc *sc, uint32_t rate)
{
 struct uchcom_divider dv;

 if (uchcom_calc_divider_settings(&dv, rate))
  return;





 uchcom_write_reg(sc,
     UCHCOM_REG_BPS_PRE, dv.dv_prescaler | 0x80,
     UCHCOM_REG_BPS_DIV, dv.dv_div);
 uchcom_write_reg(sc,
     UCHCOM_REG_BPS_MOD, dv.dv_mod,
     UCHCOM_REG_BPS_PAD, 0);
}
