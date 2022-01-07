
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct twsi_softc {int * res; int dev; } ;
typedef int bus_size_t ;


 int bus_write_4 (int ,int ,int ) ;
 int debugf (int ,char*,int ,int ) ;

__attribute__((used)) static __inline void
TWSI_WRITE(struct twsi_softc *sc, bus_size_t off, uint32_t val)
{

 debugf(sc->dev, "Writing %x to %lx\n", val, off);
 bus_write_4(sc->res[0], off, val);
}
