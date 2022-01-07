
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_softc {int sc_dev; } ;


 int CD180_CCR ;
 int DELAY (int) ;
 int device_printf (int ,char*,int,int) ;
 scalar_t__ rcin (struct rc_softc*,int ) ;

__attribute__((used)) static void
rc_wait0(struct rc_softc *sc, int chan, int line)
{
 int rcnt;

 for (rcnt = 50; rcnt && rcin(sc, CD180_CCR); rcnt--)
  DELAY(30);
 if (rcnt == 0)
  device_printf(sc->sc_dev,
      "channel %d command timeout, rc.c line: %d\n", chan, line);
}
