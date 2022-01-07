
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hifn_softc {scalar_t__ sc_suspended; } ;
typedef int device_t ;
struct TYPE_2__ {int if_flags; } ;


 int IFF_UP ;
 struct hifn_softc* device_get_softc (int ) ;
 TYPE_1__* ifp ;
 int rl_init (struct hifn_softc*) ;

__attribute__((used)) static int
hifn_resume(device_t dev)
{
 struct hifn_softc *sc = device_get_softc(dev);





 sc->sc_suspended = 0;

 return (0);
}
