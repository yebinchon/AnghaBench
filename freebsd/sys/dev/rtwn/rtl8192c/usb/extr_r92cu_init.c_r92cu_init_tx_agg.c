
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtwn_usb_softc {int tx_agg_desc_num; } ;
struct rtwn_softc {int dummy; } ;


 int R92C_TDECTRL ;
 int R92C_TDECTRL_BLK_DESC_NUM ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int RW (int ,int ,int ) ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int ) ;

void
r92cu_init_tx_agg(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);
 uint32_t reg;

 reg = rtwn_read_4(sc, R92C_TDECTRL);
 reg = RW(reg, R92C_TDECTRL_BLK_DESC_NUM, uc->tx_agg_desc_num);
 rtwn_write_4(sc, R92C_TDECTRL, reg);
}
