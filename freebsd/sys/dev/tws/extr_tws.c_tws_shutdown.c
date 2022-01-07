
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;
typedef int device_t ;


 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 struct tws_softc* device_get_softc (int ) ;
 int tws_init_connect (struct tws_softc*,int) ;
 int tws_turn_off_interrupts (struct tws_softc*) ;

__attribute__((used)) static int
tws_shutdown(device_t dev)
{

    struct tws_softc *sc = device_get_softc(dev);

    TWS_TRACE_DEBUG(sc, "entry", 0, 0);

    tws_turn_off_interrupts(sc);
    tws_init_connect(sc, 1);

    return (0);
}
