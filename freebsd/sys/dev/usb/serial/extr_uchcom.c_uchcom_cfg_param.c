
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {scalar_t__ sc_version; } ;
struct termios {int c_ospeed; } ;


 int UCHCOM_LCR1_CS8 ;
 int UCHCOM_LCR1_RX ;
 int UCHCOM_LCR1_TX ;
 int UCHCOM_REG_LCR1 ;
 int UCHCOM_REG_LCR2 ;
 int UCHCOM_REQ_RESET ;
 scalar_t__ UCHCOM_VER_30 ;
 int uchcom_ctrl_write (struct uchcom_softc*,int ,int,int) ;
 int uchcom_get_version (struct uchcom_softc*,int *) ;
 int uchcom_read_reg (struct uchcom_softc*,int ,int *,int ,int *) ;
 int uchcom_set_baudrate (struct uchcom_softc*,int ) ;
 int uchcom_set_dtr_rts (struct uchcom_softc*) ;
 int uchcom_update_status (struct uchcom_softc*) ;
 int uchcom_write_reg (struct uchcom_softc*,int ,int,int ,int) ;

__attribute__((used)) static void
uchcom_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uchcom_softc *sc = ucom->sc_parent;

 uchcom_get_version(sc, ((void*)0));
 uchcom_ctrl_write(sc, UCHCOM_REQ_RESET, 0, 0);
 uchcom_set_baudrate(sc, t->c_ospeed);
 if (sc->sc_version < UCHCOM_VER_30) {
  uchcom_read_reg(sc, UCHCOM_REG_LCR1, ((void*)0),
      UCHCOM_REG_LCR2, ((void*)0));
  uchcom_write_reg(sc, UCHCOM_REG_LCR1, 0x50,
      UCHCOM_REG_LCR2, 0x00);
 } else {






  uchcom_write_reg(sc,
      UCHCOM_REG_LCR1,
      UCHCOM_LCR1_RX | UCHCOM_LCR1_TX | UCHCOM_LCR1_CS8,
      UCHCOM_REG_LCR2, 0x00);
 }
 uchcom_update_status(sc);
 uchcom_ctrl_write(sc, UCHCOM_REQ_RESET, 0x501f, 0xd90a);
 uchcom_set_baudrate(sc, t->c_ospeed);
 uchcom_set_dtr_rts(sc);
 uchcom_update_status(sc);
}
