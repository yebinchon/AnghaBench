
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct syscon_generic_softc {int mem_res; } ;
struct syscon {int pdev; } ;
typedef int bus_size_t ;


 int SYSCON_LOCK (struct syscon_generic_softc*) ;
 int SYSCON_UNLOCK (struct syscon_generic_softc*) ;
 int bus_write_4 (int ,int ,int ) ;
 struct syscon_generic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
syscon_generic_write_4(struct syscon *syscon, bus_size_t offset, uint32_t val)
{
 struct syscon_generic_softc *sc;

 sc = device_get_softc(syscon->pdev);

 SYSCON_LOCK(sc);
 bus_write_4(sc->mem_res, offset, val);
 SYSCON_UNLOCK(sc);
 return (0);
}
