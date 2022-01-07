
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct iicbb_softc {int udelay; int iicbus; } ;


 int IICBUS_GET_FREQUENCY (int ,int ) ;
 int MAX (int,int) ;

__attribute__((used)) static void
iicbb_set_speed(struct iicbb_softc *sc, u_char speed)
{
 u_int busfreq, period;
 busfreq = IICBUS_GET_FREQUENCY(sc->iicbus, speed);
 period = 1000000 / busfreq;
 sc->udelay = MAX(period, 1);
}
