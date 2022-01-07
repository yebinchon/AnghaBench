
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct urtw_softc {int dummy; } ;


 int URTW_EPROM_CK ;
 int URTW_EPROM_CMD ;
 int URTW_EPROM_CMD_MASK ;
 int URTW_EPROM_CMD_SHIFT ;
 int URTW_EPROM_CS ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
urtw_set_mode(struct urtw_softc *sc, uint32_t mode)
{
 uint8_t data;
 usb_error_t error;

 urtw_read8_m(sc, URTW_EPROM_CMD, &data);
 data = (data & ~URTW_EPROM_CMD_MASK) | (mode << URTW_EPROM_CMD_SHIFT);
 data = data & ~(URTW_EPROM_CS | URTW_EPROM_CK);
 urtw_write8_m(sc, URTW_EPROM_CMD, data);
fail:
 return (error);
}
