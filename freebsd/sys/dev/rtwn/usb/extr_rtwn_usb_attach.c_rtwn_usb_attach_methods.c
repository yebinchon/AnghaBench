
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int bcn_check_interval; int sc_beacon_unload; void* sc_beacon_update_end; void* sc_beacon_update_begin; int sc_drop_incorrect_tx; int sc_set_desc_addr; int sc_get_qmap; int sc_fw_write_block; int sc_abort_xfers; int sc_reset_lists; int sc_start_xfers; int sc_tx_start; int sc_delay; int sc_read_4; int sc_read_2; int sc_read_1; int sc_write_4; int sc_write_2; int sc_write_1; } ;


 int rtwn_nop_softc ;
 int rtwn_nop_softc_int ;
 void* rtwn_nop_softc_vap ;
 int rtwn_usb_abort_xfers ;
 int rtwn_usb_delay ;
 int rtwn_usb_drop_incorrect_tx ;
 int rtwn_usb_fw_write_block ;
 int rtwn_usb_get_qmap ;
 int rtwn_usb_read_1 ;
 int rtwn_usb_read_2 ;
 int rtwn_usb_read_4 ;
 int rtwn_usb_reset_lists ;
 int rtwn_usb_start_xfers ;
 int rtwn_usb_tx_start ;
 int rtwn_usb_write_1 ;
 int rtwn_usb_write_2 ;
 int rtwn_usb_write_4 ;

__attribute__((used)) static void
rtwn_usb_attach_methods(struct rtwn_softc *sc)
{
 sc->sc_write_1 = rtwn_usb_write_1;
 sc->sc_write_2 = rtwn_usb_write_2;
 sc->sc_write_4 = rtwn_usb_write_4;
 sc->sc_read_1 = rtwn_usb_read_1;
 sc->sc_read_2 = rtwn_usb_read_2;
 sc->sc_read_4 = rtwn_usb_read_4;
 sc->sc_delay = rtwn_usb_delay;
 sc->sc_tx_start = rtwn_usb_tx_start;
 sc->sc_start_xfers = rtwn_usb_start_xfers;
 sc->sc_reset_lists = rtwn_usb_reset_lists;
 sc->sc_abort_xfers = rtwn_usb_abort_xfers;
 sc->sc_fw_write_block = rtwn_usb_fw_write_block;
 sc->sc_get_qmap = rtwn_usb_get_qmap;
 sc->sc_set_desc_addr = rtwn_nop_softc;
 sc->sc_drop_incorrect_tx = rtwn_usb_drop_incorrect_tx;
 sc->sc_beacon_update_begin = rtwn_nop_softc_vap;
 sc->sc_beacon_update_end = rtwn_nop_softc_vap;
 sc->sc_beacon_unload = rtwn_nop_softc_int;

 sc->bcn_check_interval = 100;
}
