
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ds1307_softc {int sc_ctrl; int sc_dev; } ;


 int DS1307_CONTROL ;
 int DS1307_CTRL_MASK ;
 int device_printf (int ,char*) ;
 int ds1307_write1 (int ,int ,int) ;

__attribute__((used)) static int
ds1307_ctrl_write(struct ds1307_softc *sc)
{
 int error;
 uint8_t ctrl;

 ctrl = sc->sc_ctrl & DS1307_CTRL_MASK;
 error = ds1307_write1(sc->sc_dev, DS1307_CONTROL, ctrl);
 if (error != 0)
  device_printf(sc->sc_dev, "cannot write to RTC.\n");

 return (error);
}
