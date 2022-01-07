
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int regs_res; } ;
typedef TYPE_1__ ig4iic_softc_t ;


 int BUS_SPACE_BARRIER_READ ;
 int bus_barrier (int ,int ,int,int ) ;
 int bus_read_4 (int ,int ) ;

__attribute__((used)) static __inline uint32_t
reg_read(ig4iic_softc_t *sc, uint32_t reg)
{
 uint32_t value;

 bus_barrier(sc->regs_res, reg, 4, BUS_SPACE_BARRIER_READ);
 value = bus_read_4(sc->regs_res, reg);
 return (value);
}
