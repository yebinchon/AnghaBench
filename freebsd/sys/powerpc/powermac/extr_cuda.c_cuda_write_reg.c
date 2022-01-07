
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct cuda_softc {int sc_memr; } ;


 int bus_write_1 (int ,int ,int ) ;

__attribute__((used)) static void
cuda_write_reg(struct cuda_softc *sc, u_int offset, uint8_t value) {
 bus_write_1(sc->sc_memr, offset, value);
}
