
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {size_t max_xfer_size; } ;
typedef int bus_dmaengine_t ;


 struct ioat_softc* to_ioat_softc (int ) ;

size_t
ioat_get_max_io_size(bus_dmaengine_t dmaengine)
{
 struct ioat_softc *ioat;

 ioat = to_ioat_softc(dmaengine);
 return (ioat->max_xfer_size);
}
