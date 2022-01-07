
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {int (* arswitch_atu_flush ) (struct arswitch_softc*) ;} ;
struct arswitch_softc {TYPE_2__ atu; TYPE_1__ hal; } ;
typedef int device_t ;


 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 struct arswitch_softc* device_get_softc (int ) ;
 int stub1 (struct arswitch_softc*) ;

__attribute__((used)) static int
arswitch_atu_flush_all(device_t dev)
{
 struct arswitch_softc *sc;
 int err;

 sc = device_get_softc(dev);
 ARSWITCH_LOCK(sc);
 err = sc->hal.arswitch_atu_flush(sc);

 sc->atu.count = 0;
 ARSWITCH_UNLOCK(sc);
 return (err);
}
