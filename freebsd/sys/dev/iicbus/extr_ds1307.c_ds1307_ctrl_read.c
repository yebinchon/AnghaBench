
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307_softc {int sc_dev; scalar_t__ sc_ctrl; } ;


 int DS1307_CONTROL ;
 int device_printf (int ,char*) ;
 int ds1307_read1 (int ,int ,scalar_t__*) ;

__attribute__((used)) static int
ds1307_ctrl_read(struct ds1307_softc *sc)
{
 int error;

 sc->sc_ctrl = 0;
 error = ds1307_read1(sc->sc_dev, DS1307_CONTROL, &sc->sc_ctrl);
 if (error) {
  device_printf(sc->sc_dev, "cannot read from RTC.\n");
  return (error);
 }

 return (0);
}
