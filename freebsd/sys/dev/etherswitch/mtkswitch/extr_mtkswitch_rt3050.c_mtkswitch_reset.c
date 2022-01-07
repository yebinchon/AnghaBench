
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int dummy; } ;


 int MA_NOTOWNED ;
 int MTKSWITCH_LOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 scalar_t__ MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_STRT ;
 int MTKSWITCH_UNLOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_WRITE (struct mtkswitch_softc*,int ,int ) ;
 int STRT_RESET ;

__attribute__((used)) static int
mtkswitch_reset(struct mtkswitch_softc *sc)
{

 MTKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 MTKSWITCH_LOCK(sc);
 MTKSWITCH_WRITE(sc, MTKSWITCH_STRT, STRT_RESET);
 while (MTKSWITCH_READ(sc, MTKSWITCH_STRT) != 0);
 MTKSWITCH_UNLOCK(sc);

 return (0);
}
