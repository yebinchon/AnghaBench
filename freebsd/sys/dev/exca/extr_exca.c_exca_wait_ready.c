
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exca_softc {int dev; } ;


 int DELAY (int) ;
 int DEVPRINTF (int ,char*,int) ;
 int EXCA_IF_STATUS ;
 int EXCA_IF_STATUS_READY ;
 int device_printf (int ,char*,int) ;
 int exca_getb (struct exca_softc*,int ) ;

__attribute__((used)) static void
exca_wait_ready(struct exca_softc *sc)
{
 int i;
 DEVPRINTF(sc->dev, "exca_wait_ready: status 0x%02x\n",
     exca_getb(sc, EXCA_IF_STATUS));
 for (i = 0; i < 10000; i++) {
  if (exca_getb(sc, EXCA_IF_STATUS) & EXCA_IF_STATUS_READY)
   return;
  DELAY(500);
 }
 device_printf(sc->dev, "ready never happened, status = %02x\n",
     exca_getb(sc, EXCA_IF_STATUS));
}
