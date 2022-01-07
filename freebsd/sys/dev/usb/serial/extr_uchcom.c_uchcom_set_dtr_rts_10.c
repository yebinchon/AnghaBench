
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uchcom_softc {int dummy; } ;


 int UCHCOM_REG_STAT1 ;
 int uchcom_write_reg (struct uchcom_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static void
uchcom_set_dtr_rts_10(struct uchcom_softc *sc, uint8_t val)
{
 uchcom_write_reg(sc, UCHCOM_REG_STAT1, val, UCHCOM_REG_STAT1, val);
}
