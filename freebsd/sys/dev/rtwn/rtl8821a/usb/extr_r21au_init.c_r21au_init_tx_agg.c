
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int tx_agg_desc_num; } ;
struct rtwn_softc {int dummy; } ;


 int R21A_DWBCN1_CTRL ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int r92cu_init_tx_agg (struct rtwn_softc*) ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int) ;

void
r21au_init_tx_agg(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);

 r92cu_init_tx_agg(sc);

 rtwn_write_1(sc, R21A_DWBCN1_CTRL, uc->tx_agg_desc_num << 1);
}
