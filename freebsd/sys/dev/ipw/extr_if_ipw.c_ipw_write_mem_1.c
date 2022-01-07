
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ipw_softc {int dummy; } ;
typedef scalar_t__ bus_size_t ;


 int CSR_WRITE_1 (struct ipw_softc*,scalar_t__,int const) ;
 int CSR_WRITE_4 (struct ipw_softc*,int ,scalar_t__) ;
 int IPW_CSR_INDIRECT_ADDR ;
 scalar_t__ IPW_CSR_INDIRECT_DATA ;

__attribute__((used)) static void
ipw_write_mem_1(struct ipw_softc *sc, bus_size_t offset, const uint8_t *datap,
    bus_size_t count)
{
 for (; count > 0; offset++, datap++, count--) {
  CSR_WRITE_4(sc, IPW_CSR_INDIRECT_ADDR, offset & ~3);
  CSR_WRITE_1(sc, IPW_CSR_INDIRECT_DATA + (offset & 3), *datap);
 }
}
