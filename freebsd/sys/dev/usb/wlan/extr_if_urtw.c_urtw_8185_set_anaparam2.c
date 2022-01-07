
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct urtw_softc {int dummy; } ;


 int URTW_ANAPARAM2 ;
 int URTW_CONFIG3 ;
 int URTW_CONFIG3_ANAPARAM_WRITE ;
 int URTW_EPROM_CMD_CONFIG ;
 int URTW_EPROM_CMD_NORMAL ;
 int urtw_read8_m (struct urtw_softc*,int ,int*) ;
 scalar_t__ urtw_set_mode (struct urtw_softc*,int ) ;
 int urtw_write32_m (struct urtw_softc*,int ,int ) ;
 int urtw_write8_m (struct urtw_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
urtw_8185_set_anaparam2(struct urtw_softc *sc, uint32_t val)
{
 uint8_t data;
 usb_error_t error;

 error = urtw_set_mode(sc, URTW_EPROM_CMD_CONFIG);
 if (error)
  goto fail;

 urtw_read8_m(sc, URTW_CONFIG3, &data);
 urtw_write8_m(sc, URTW_CONFIG3, data | URTW_CONFIG3_ANAPARAM_WRITE);
 urtw_write32_m(sc, URTW_ANAPARAM2, val);
 urtw_read8_m(sc, URTW_CONFIG3, &data);
 urtw_write8_m(sc, URTW_CONFIG3, data & ~URTW_CONFIG3_ANAPARAM_WRITE);

 error = urtw_set_mode(sc, URTW_EPROM_CMD_NORMAL);
 if (error)
  goto fail;
fail:
 return (error);
}
