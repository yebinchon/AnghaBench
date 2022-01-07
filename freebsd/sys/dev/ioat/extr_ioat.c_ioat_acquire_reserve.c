
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {int dummy; } ;
typedef int bus_dmaengine_t ;


 int ioat_acquire (int ) ;
 int ioat_release (int ) ;
 int ioat_reserve_space (struct ioat_softc*,unsigned int,int) ;
 struct ioat_softc* to_ioat_softc (int ) ;

int
ioat_acquire_reserve(bus_dmaengine_t dmaengine, unsigned n, int mflags)
{
 struct ioat_softc *ioat;
 int error;

 ioat = to_ioat_softc(dmaengine);
 ioat_acquire(dmaengine);

 error = ioat_reserve_space(ioat, n, mflags);
 if (error != 0)
  ioat_release(dmaengine);
 return (error);
}
