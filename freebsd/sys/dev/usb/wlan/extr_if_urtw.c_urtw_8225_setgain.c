
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct urtw_softc {int dummy; } ;
typedef int int16_t ;


 int urtw_8187_write_phy_ofdm (struct urtw_softc*,int,int ) ;
 int * urtw_8225_gain ;

__attribute__((used)) static usb_error_t
urtw_8225_setgain(struct urtw_softc *sc, int16_t gain)
{
 usb_error_t error;

 urtw_8187_write_phy_ofdm(sc, 0x0d, urtw_8225_gain[gain * 4]);
 urtw_8187_write_phy_ofdm(sc, 0x1b, urtw_8225_gain[gain * 4 + 2]);
 urtw_8187_write_phy_ofdm(sc, 0x1d, urtw_8225_gain[gain * 4 + 3]);
 urtw_8187_write_phy_ofdm(sc, 0x23, urtw_8225_gain[gain * 4 + 1]);
fail:
 return (error);
}
