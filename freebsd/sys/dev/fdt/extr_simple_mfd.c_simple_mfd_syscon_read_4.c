
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
 struct simple_mfd_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
simple_mfd_syscon_read_4(struct syscon *syscon, bus_size_t offset)
{
 struct simple_mfd_softc *sc;
 uint32_t val;

 sc = device_get_softc(syscon->pdev);

 SYSCON_LOCK(sc);
 val = bus_read_4(sc->mem_res, offset);
 SYSCON_UNLOCK(sc);
 return (val);
}
