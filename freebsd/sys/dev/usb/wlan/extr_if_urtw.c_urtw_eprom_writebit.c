
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int dummy; } ;
typedef scalar_t__ int16_t ;


 int DELAY (int ) ;
 int URTW_EPROM_CMD ;
 int URTW_EPROM_DELAY ;
 int URTW_EPROM_WRITEBIT ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
urtw_eprom_writebit(struct urtw_softc *sc, int16_t bit)
{
 uint8_t data;
 usb_error_t error;

 urtw_read8_m(sc, URTW_EPROM_CMD, &data);
 if (bit != 0)
  urtw_write8_m(sc, URTW_EPROM_CMD, data | URTW_EPROM_WRITEBIT);
 else
  urtw_write8_m(sc, URTW_EPROM_CMD, data & ~URTW_EPROM_WRITEBIT);
 DELAY(URTW_EPROM_DELAY);
fail:
 return (error);
}
