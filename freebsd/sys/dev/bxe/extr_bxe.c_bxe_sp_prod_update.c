
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {TYPE_1__* bar; int spq_prod_idx; } ;
struct TYPE_2__ {int handle; int tag; } ;


 size_t BAR0 ;
 scalar_t__ BAR_XSTRORM_INTMEM ;
 int BUS_SPACE_BARRIER_WRITE ;
 int REG_WR16 (struct bxe_softc*,scalar_t__,int ) ;
 int SC_FUNC (struct bxe_softc*) ;
 scalar_t__ XSTORM_SPQ_PROD_OFFSET (int) ;
 int bus_space_barrier (int ,int ,int ,int ,int ) ;
 int mb () ;

__attribute__((used)) static inline
void bxe_sp_prod_update(struct bxe_softc *sc)
{
    int func = SC_FUNC(sc);






    mb();

    REG_WR16(sc, (BAR_XSTRORM_INTMEM + XSTORM_SPQ_PROD_OFFSET(func)),
             sc->spq_prod_idx);

    bus_space_barrier(sc->bar[BAR0].tag, sc->bar[BAR0].handle, 0, 0,
                      BUS_SPACE_BARRIER_WRITE);
}
