
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct twsi_softc {int dev; int reg_control; } ;


 int DELAY (int) ;
 int TWSI_READ (struct twsi_softc*,int ) ;
 int debugf (int ,char*,...) ;

__attribute__((used)) static int
twsi_poll_ctrl(struct twsi_softc *sc, int timeout, uint32_t mask)
{

 timeout /= 10;
 debugf(sc->dev, "Waiting for ctrl reg to match mask %x\n", mask);
 while (!(TWSI_READ(sc, sc->reg_control) & mask)) {
  DELAY(10);
  if (--timeout < 0)
   return (timeout);
 }
 debugf(sc->dev, "done\n");
 return (0);
}
