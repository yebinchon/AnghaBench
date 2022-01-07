
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int dummy; } ;


 int DELAY (int ) ;
 int URTW_EPROM_CMD ;
 int URTW_EPROM_CS ;
 int URTW_EPROM_DELAY ;
 int URTW_EPROM_ENABLE ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
urtw_eprom_cs(struct urtw_softc *sc, int able)
{
 uint8_t data;
 usb_error_t error;

 urtw_read8_m(sc, URTW_EPROM_CMD, &data);
 if (able == URTW_EPROM_ENABLE)
  urtw_write8_m(sc, URTW_EPROM_CMD, data | URTW_EPROM_CS);
 else
  urtw_write8_m(sc, URTW_EPROM_CMD, data & ~URTW_EPROM_CS);
 DELAY(URTW_EPROM_DELAY);
fail:
 return (error);
}
