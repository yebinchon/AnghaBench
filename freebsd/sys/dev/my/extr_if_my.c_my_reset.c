
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {int my_dev; } ;


 int CSR_READ_4 (struct my_softc*,int ) ;
 int DELAY (int) ;
 int MY_BCR ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_SETBIT (struct my_softc*,int ,int) ;
 int MY_SWR ;
 int MY_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
my_reset(struct my_softc * sc)
{
 int i;

 MY_LOCK_ASSERT(sc);
 MY_SETBIT(sc, MY_BCR, MY_SWR);
 for (i = 0; i < MY_TIMEOUT; i++) {
  DELAY(10);
  if (!(CSR_READ_4(sc, MY_BCR) & MY_SWR))
   break;
 }
 if (i == MY_TIMEOUT)
  device_printf(sc->my_dev, "reset never completed!\n");


 DELAY(1000);
 return;
}
