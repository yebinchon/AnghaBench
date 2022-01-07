
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bxe_softc {scalar_t__ tx_ring_size; } ;
struct bxe_fastpath {scalar_t__ tx_bd_cons; scalar_t__ tx_bd_prod; } ;
typedef scalar_t__ int16_t ;


 scalar_t__ SUB_S16 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline uint16_t
bxe_tx_avail(struct bxe_softc *sc,
             struct bxe_fastpath *fp)
{
    int16_t used;
    uint16_t prod;
    uint16_t cons;

    prod = fp->tx_bd_prod;
    cons = fp->tx_bd_cons;

    used = SUB_S16(prod, cons);

    return (int16_t)(sc->tx_ring_size) - used;
}
