
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct urtw_softc {int dummy; } ;


 int URTW_MAC0 ;
 int URTW_MAC4 ;
 int urtw_write16_m (struct urtw_softc*,int ,int const) ;
 int urtw_write32_m (struct urtw_softc*,int ,int const) ;

__attribute__((used)) static usb_error_t
urtw_set_macaddr(struct urtw_softc *sc, const uint8_t *macaddr)
{
 usb_error_t error;

 urtw_write32_m(sc, URTW_MAC0, ((const uint32_t *)macaddr)[0]);
 urtw_write16_m(sc, URTW_MAC4, ((const uint32_t *)macaddr)[1] & 0xffff);

fail:
 return (error);
}
