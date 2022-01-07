
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int bcn_check_interval; int sc_beacon_unload; int sc_beacon_update_end; int sc_beacon_update_begin; void* sc_drop_incorrect_tx; int sc_set_desc_addr; int sc_get_qmap; int sc_fw_write_block; void* sc_abort_xfers; int sc_reset_lists; int sc_tx_start; int sc_delay; int sc_read_4; int sc_read_2; int sc_read_1; int sc_write_4; int sc_write_2; int sc_write_1; } ;


 void* rtwn_nop_softc ;
 int rtwn_pci_beacon_update_begin ;
 int rtwn_pci_beacon_update_end ;
 int rtwn_pci_delay ;
 int rtwn_pci_fw_write_block ;
 int rtwn_pci_get_qmap ;
 int rtwn_pci_read_1 ;
 int rtwn_pci_read_2 ;
 int rtwn_pci_read_4 ;
 int rtwn_pci_reset_beacon_ring ;
 int rtwn_pci_reset_lists ;
 int rtwn_pci_set_desc_addr ;
 int rtwn_pci_tx_start ;
 int rtwn_pci_write_1 ;
 int rtwn_pci_write_2 ;
 int rtwn_pci_write_4 ;

__attribute__((used)) static void
rtwn_pci_attach_methods(struct rtwn_softc *sc)
{
 sc->sc_write_1 = rtwn_pci_write_1;
 sc->sc_write_2 = rtwn_pci_write_2;
 sc->sc_write_4 = rtwn_pci_write_4;
 sc->sc_read_1 = rtwn_pci_read_1;
 sc->sc_read_2 = rtwn_pci_read_2;
 sc->sc_read_4 = rtwn_pci_read_4;
 sc->sc_delay = rtwn_pci_delay;
 sc->sc_tx_start = rtwn_pci_tx_start;
 sc->sc_reset_lists = rtwn_pci_reset_lists;
 sc->sc_abort_xfers = rtwn_nop_softc;
 sc->sc_fw_write_block = rtwn_pci_fw_write_block;
 sc->sc_get_qmap = rtwn_pci_get_qmap;
 sc->sc_set_desc_addr = rtwn_pci_set_desc_addr;
 sc->sc_drop_incorrect_tx = rtwn_nop_softc;
 sc->sc_beacon_update_begin = rtwn_pci_beacon_update_begin;
 sc->sc_beacon_update_end = rtwn_pci_beacon_update_end;
 sc->sc_beacon_unload = rtwn_pci_reset_beacon_ring;

 sc->bcn_check_interval = 25000;
}
