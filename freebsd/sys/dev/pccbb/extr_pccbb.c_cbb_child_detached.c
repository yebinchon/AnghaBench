
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbb_softc {scalar_t__ cbdev; TYPE_1__* exca; } ;
typedef scalar_t__ device_t ;
struct TYPE_2__ {scalar_t__ pccarddev; } ;


 int device_get_nameunit (scalar_t__) ;
 struct cbb_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,int ) ;

void
cbb_child_detached(device_t brdev, device_t child)
{
 struct cbb_softc *sc = device_get_softc(brdev);


 if (child != sc->cbdev && child != sc->exca[0].pccarddev)
  device_printf(brdev, "Unknown child detached: %s\n",
      device_get_nameunit(child));
}
