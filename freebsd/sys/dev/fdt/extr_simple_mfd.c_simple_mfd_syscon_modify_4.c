
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct syscon {int pdev; } ;
struct simple_mfd_softc {int mem_res; } ;
typedef int bus_size_t ;


 int SYSCON_LOCK (struct simple_mfd_softc*) ;
 int SYSCON_UNLOCK (struct simple_mfd_softc*) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct simple_mfd_softc* device_get_softc (int ) ;

__attribute__((used)) static int
simple_mfd_syscon_modify_4(struct syscon *syscon, bus_size_t offset,
    uint32_t clear_bits, uint32_t set_bits)
{
 struct simple_mfd_softc *sc;
 uint32_t val;

 sc = device_get_softc(syscon->pdev);

 SYSCON_LOCK(sc);
 val = bus_read_4(sc->mem_res, offset);
 val &= ~clear_bits;
 val |= set_bits;
 bus_write_4(sc->mem_res, offset, val);
 SYSCON_UNLOCK(sc);
 return (0);
}
