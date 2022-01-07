
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ioat_softc {int intrdelay_max; } ;
typedef int bus_dmaengine_t ;


 struct ioat_softc* to_ioat_softc (int ) ;

uint16_t
ioat_get_max_coalesce_period(bus_dmaengine_t dmaengine)
{
 struct ioat_softc *ioat;

 ioat = to_ioat_softc(dmaengine);
 return (ioat->intrdelay_max);
}
