
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
struct urtw_softc {int dummy; } ;
typedef int int16_t ;


 int DELAY (int ) ;
 int URTW_EPROM_CMD ;
 int URTW_EPROM_DELAY ;
 int URTW_EPROM_READBIT ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;

__attribute__((used)) static usb_error_t
urtw_eprom_readbit(struct urtw_softc *sc, int16_t *data)
{
 uint8_t data8;
 usb_error_t error;

 urtw_read8_m(sc, URTW_EPROM_CMD, &data8);
 *data = (data8 & URTW_EPROM_READBIT) ? 1 : 0;
 DELAY(URTW_EPROM_DELAY);

fail:
 return (error);
}
