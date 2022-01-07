
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ioat_softc {scalar_t__ intrdelay_max; int cached_intrdelay; int intrdelay_supported; } ;
typedef int bus_dmaengine_t ;


 int ENODEV ;
 int ERANGE ;
 int IOAT_INTRDELAY_OFFSET ;
 int IOAT_INTRDELAY_US_MASK ;
 int ioat_read_2 (struct ioat_softc*,int ) ;
 int ioat_write_2 (struct ioat_softc*,int ,scalar_t__) ;
 struct ioat_softc* to_ioat_softc (int ) ;

int
ioat_set_interrupt_coalesce(bus_dmaengine_t dmaengine, uint16_t delay)
{
 struct ioat_softc *ioat;

 ioat = to_ioat_softc(dmaengine);
 if (!ioat->intrdelay_supported)
  return (ENODEV);
 if (delay > ioat->intrdelay_max)
  return (ERANGE);

 ioat_write_2(ioat, IOAT_INTRDELAY_OFFSET, delay);
 ioat->cached_intrdelay =
     ioat_read_2(ioat, IOAT_INTRDELAY_OFFSET) & IOAT_INTRDELAY_US_MASK;
 return (0);
}
