
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_clock_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_addr_t ;


 int CSR_READ_4 (struct jz4780_clock_softc*,int ) ;
 int CSR_WRITE_4 (struct jz4780_clock_softc*,int ,int ) ;
 struct jz4780_clock_softc* device_get_softc (int ) ;

__attribute__((used)) static int
jz4780_clock_modify_4(device_t dev, bus_addr_t addr, uint32_t clear_mask,
    uint32_t set_mask)
{
 struct jz4780_clock_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);
 val = CSR_READ_4(sc, addr);
 val &= ~clear_mask;
 val |= set_mask;
 CSR_WRITE_4(sc, addr, val);
 return (0);
}
