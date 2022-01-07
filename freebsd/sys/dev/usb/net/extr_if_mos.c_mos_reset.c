
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mos_softc {int sc_mtx; } ;


 int MOS_CTL ;
 int MOS_CTL_ALLMULTI ;
 int MOS_CTL_RX_ENB ;
 int MOS_CTL_RX_PROMISC ;
 int MOS_CTL_TX_ENB ;
 int MOS_FRAME_DROP_CNT ;
 int hz ;
 int mos_reg_read_1 (struct mos_softc*,int ) ;
 int mos_reg_write_1 (struct mos_softc*,int ,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static void
mos_reset(struct mos_softc *sc)
{
 uint8_t ctl;

 ctl = mos_reg_read_1(sc, MOS_CTL);
 ctl &= ~(MOS_CTL_RX_PROMISC | MOS_CTL_ALLMULTI | MOS_CTL_TX_ENB |
     MOS_CTL_RX_ENB);

 mos_reg_write_1(sc, MOS_CTL, ctl);


 mos_reg_write_1(sc, MOS_FRAME_DROP_CNT, 0);


 usb_pause_mtx(&sc->sc_mtx, hz / 128);
 return;
}
