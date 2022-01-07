
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds3231_softc {int sc_dev; int sc_status; } ;


 int DS3231_STATUS ;
 int device_printf (int ,char*) ;
 int ds3231_read1 (int ,int ,int *) ;

__attribute__((used)) static int
ds3231_status_read(struct ds3231_softc *sc)
{
 int error;

 error = ds3231_read1(sc->sc_dev, DS3231_STATUS, &sc->sc_status);
 if (error) {
  device_printf(sc->sc_dev, "cannot read from RTC.\n");
  return (error);
 }

 return (0);
}
