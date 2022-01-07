
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct twsi_softc {int dev; int * res; } ;
typedef int bus_size_t ;


 int bus_read_4 (int ,int ) ;
 int debugf (int ,char*,int ,int ) ;

__attribute__((used)) static __inline uint32_t
TWSI_READ(struct twsi_softc *sc, bus_size_t off)
{
 uint32_t val;

 val = bus_read_4(sc->res[0], off);
 debugf(sc->dev, "read %x from %lx\n", val, off);
 return (val);
}
