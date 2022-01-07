
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
struct urtw_softc {int dummy; } ;


 int URTW_RF_PINS_ENABLE ;
 int urtw_write16_m (struct urtw_softc*,int ,int) ;

__attribute__((used)) static usb_error_t
urtw_8185_rf_pins_enable(struct urtw_softc *sc)
{
 usb_error_t error = 0;

 urtw_write16_m(sc, URTW_RF_PINS_ENABLE, 0x1ff7);
fail:
 return (error);
}
