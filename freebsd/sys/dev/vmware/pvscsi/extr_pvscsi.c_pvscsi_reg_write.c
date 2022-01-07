
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int mm_res; } ;


 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static inline void
pvscsi_reg_write(struct pvscsi_softc *sc, uint32_t offset, uint32_t val)
{

 bus_write_4(sc->mm_res, offset, val);
}
