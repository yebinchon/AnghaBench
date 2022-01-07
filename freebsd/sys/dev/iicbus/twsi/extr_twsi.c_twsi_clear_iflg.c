
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twsi_softc {int dummy; } ;


 int DELAY (int) ;
 int TWSI_CONTROL_IFLG ;
 int twsi_control_clear (struct twsi_softc*,int ) ;

__attribute__((used)) static __inline void
twsi_clear_iflg(struct twsi_softc *sc)
{

 DELAY(1000);
 twsi_control_clear(sc, TWSI_CONTROL_IFLG);
 DELAY(1000);
}
