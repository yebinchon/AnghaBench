
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int xl_dev; } ;


 int CSR_READ_2 (struct xl_softc*,int ) ;
 int XL_STATUS ;
 int XL_STAT_CMDBUSY ;
 int XL_TIMEOUT ;
 scalar_t__ bus_child_present (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
xl_wait(struct xl_softc *sc)
{
 int i;

 for (i = 0; i < XL_TIMEOUT; i++) {
  if ((CSR_READ_2(sc, XL_STATUS) & XL_STAT_CMDBUSY) == 0)
   break;
 }

 if (i == XL_TIMEOUT && bus_child_present(sc->xl_dev))
  device_printf(sc->xl_dev, "command never completed!\n");
}
