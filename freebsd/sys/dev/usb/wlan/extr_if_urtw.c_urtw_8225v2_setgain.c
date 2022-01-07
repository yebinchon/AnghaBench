
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int sc_mtx; } ;
typedef int int16_t ;


 int urtw_8187_write_phy_ofdm (struct urtw_softc*,int,int) ;
 int* urtw_8225v2_gain_bg ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8225v2_setgain(struct urtw_softc *sc, int16_t gain)
{
 uint8_t *gainp;
 usb_error_t error;


 gainp = urtw_8225v2_gain_bg;
 urtw_8187_write_phy_ofdm(sc, 0x0d, gainp[gain * 3]);
 usb_pause_mtx(&sc->sc_mtx, 1);
 urtw_8187_write_phy_ofdm(sc, 0x1b, gainp[gain * 3 + 1]);
 usb_pause_mtx(&sc->sc_mtx, 1);
 urtw_8187_write_phy_ofdm(sc, 0x1d, gainp[gain * 3 + 2]);
 usb_pause_mtx(&sc->sc_mtx, 1);
 urtw_8187_write_phy_ofdm(sc, 0x21, 0x17);
 usb_pause_mtx(&sc->sc_mtx, 1);
fail:
 return (error);
}
