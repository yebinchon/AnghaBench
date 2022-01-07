
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ int_block; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;


 scalar_t__ INT_BLOCK_HC ;
 int bxe_hc_ack_int (struct bxe_softc*) ;
 int bxe_igu_ack_int (struct bxe_softc*) ;
 int mb () ;

__attribute__((used)) static inline uint16_t
bxe_ack_int(struct bxe_softc *sc)
{
    mb();
    if (sc->devinfo.int_block == INT_BLOCK_HC) {
        return (bxe_hc_ack_int(sc));
    } else {
        return (bxe_igu_ack_int(sc));
    }
}
