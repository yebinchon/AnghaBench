
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int mm_res; } ;


 int bus_read_4 (int ,int ) ;

__attribute__((used)) static inline uint32_t
pvscsi_reg_read(struct pvscsi_softc *sc, uint32_t offset)
{

 return (bus_read_4(sc->mm_res, offset));
}
