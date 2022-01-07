
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioat_softc {int capabilities; } ;
typedef int bus_dmaengine_t ;


 struct ioat_softc* to_ioat_softc (int ) ;

uint32_t
ioat_get_capabilities(bus_dmaengine_t dmaengine)
{
 struct ioat_softc *ioat;

 ioat = to_ioat_softc(dmaengine);
 return (ioat->capabilities);
}
