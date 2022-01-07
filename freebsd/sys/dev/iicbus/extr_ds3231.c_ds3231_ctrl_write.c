
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ds3231_softc {int sc_ctrl; int sc_dev; } ;


 int DS3231_CONTROL ;
 int DS3231_CTRL_MASK ;
 int device_printf (int ,char*) ;
 int ds3231_write1 (int ,int ,int) ;

__attribute__((used)) static int
ds3231_ctrl_write(struct ds3231_softc *sc)
{
 int error;
 uint8_t data;


 data = sc->sc_ctrl & ~DS3231_CTRL_MASK;
 error = ds3231_write1(sc->sc_dev, DS3231_CONTROL, data);
 if (error != 0)
  device_printf(sc->sc_dev, "cannot write to RTC.\n");

 return (error);
}
