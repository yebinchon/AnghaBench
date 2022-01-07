
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_clock_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int CSR_WRITE_4 (struct jz4780_clock_softc*,int ,int ) ;
 struct jz4780_clock_softc* device_get_softc (int ) ;

__attribute__((used)) static int
jz4780_clock_write_4(device_t dev, bus_addr_t addr, uint32_t val)
{
 struct jz4780_clock_softc *sc;

 sc = device_get_softc(dev);
 CSR_WRITE_4(sc, addr, val);
 return (0);
}
