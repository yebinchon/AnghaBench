
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;
typedef int device_t ;


 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 struct tws_softc* device_get_softc (int ) ;

__attribute__((used)) static int
tws_resume(device_t dev)
{

    struct tws_softc *sc = device_get_softc(dev);

    if ( sc )
        TWS_TRACE_DEBUG(sc, "entry", 0, 0);
    return (0);
}
