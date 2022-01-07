
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct urtw_softc {int sc_mtx; } ;


 int URTW_PHY_MAGIC1 ;
 int URTW_PHY_MAGIC2 ;
 int URTW_PHY_MAGIC3 ;
 int URTW_PHY_MAGIC4 ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static usb_error_t
urtw_8187_write_phy(struct urtw_softc *sc, uint8_t addr, uint32_t data)
{
 uint32_t phyw;
 usb_error_t error;

 phyw = ((data << 8) | (addr | 0x80));
 urtw_write8_m(sc, URTW_PHY_MAGIC4, ((phyw & 0xff000000) >> 24));
 urtw_write8_m(sc, URTW_PHY_MAGIC3, ((phyw & 0x00ff0000) >> 16));
 urtw_write8_m(sc, URTW_PHY_MAGIC2, ((phyw & 0x0000ff00) >> 8));
 urtw_write8_m(sc, URTW_PHY_MAGIC1, ((phyw & 0x000000ff)));
 usb_pause_mtx(&sc->sc_mtx, 1);
fail:
 return (error);
}
