
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ds3231_softc {int sc_dev; int sc_status; } ;


 int DS3231_STATUS ;
 int DS3231_STATUS_A1F ;
 int DS3231_STATUS_A2F ;
 int device_printf (int ,char*) ;
 int ds3231_write1 (int ,int ,int ) ;

__attribute__((used)) static int
ds3231_status_write(struct ds3231_softc *sc, int clear_a1, int clear_a2)
{
 int error;
 uint8_t data;

 data = sc->sc_status;
 if (clear_a1 == 0)
  data |= DS3231_STATUS_A1F;
 if (clear_a2 == 0)
  data |= DS3231_STATUS_A2F;
 error = ds3231_write1(sc->sc_dev, DS3231_STATUS, data);
 if (error != 0)
  device_printf(sc->sc_dev, "cannot write to RTC.\n");

 return (error);
}
