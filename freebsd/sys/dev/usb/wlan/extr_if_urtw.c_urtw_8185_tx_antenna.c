
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int sc_mtx; } ;


 int URTW_TX_ANTENNA ;
 int urtw_write8_m (struct urtw_softc*,int ,int ) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8185_tx_antenna(struct urtw_softc *sc, uint8_t ant)
{
 usb_error_t error;

 urtw_write8_m(sc, URTW_TX_ANTENNA, ant);
 usb_pause_mtx(&sc->sc_mtx, 1);
fail:
 return (error);
}
