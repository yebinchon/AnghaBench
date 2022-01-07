
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {int dummy; } ;


 scalar_t__ UCHCOM_BRK_MASK ;
 scalar_t__ UCHCOM_LCR1_TX ;
 int UCHCOM_REG_BREAK1 ;
 int UCHCOM_REG_LCR1 ;
 int uchcom_read_reg (struct uchcom_softc*,int ,scalar_t__*,int ,scalar_t__*) ;
 int uchcom_write_reg (struct uchcom_softc*,int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void
uchcom_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct uchcom_softc *sc = ucom->sc_parent;
 uint8_t brk1;
 uint8_t brk2;

 uchcom_read_reg(sc, UCHCOM_REG_BREAK1, &brk1, UCHCOM_REG_LCR1, &brk2);
 if (onoff) {

  brk1 &= ~UCHCOM_BRK_MASK;
  brk2 &= ~UCHCOM_LCR1_TX;
 } else {

  brk1 |= UCHCOM_BRK_MASK;
  brk2 |= UCHCOM_LCR1_TX;
 }
 uchcom_write_reg(sc, UCHCOM_REG_BREAK1, brk1, UCHCOM_REG_LCR1, brk2);
}
