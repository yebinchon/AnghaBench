
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct urtw_softc {int dummy; } ;


 int urtw_8187_write_phy (struct urtw_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
urtw_8187_write_phy_ofdm_c(struct urtw_softc *sc, uint8_t addr, uint32_t data)
{

 data = data & 0xff;
 return urtw_8187_write_phy(sc, addr, data);
}
