
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int sp_state; } ;


 int BLOGE (struct bxe_softc*,char*,unsigned long,unsigned long) ;
 int DELAY (int) ;
 int FALSE ;
 int TRUE ;
 unsigned long atomic_load_acq_long (int *) ;
 int mb () ;

__attribute__((used)) static inline uint8_t
bxe_wait_sp_comp(struct bxe_softc *sc,
                 unsigned long mask)
{
    unsigned long tmp;
    int tout = 5000;

    while (tout--) {
        mb();
        if (!(atomic_load_acq_long(&sc->sp_state) & mask)) {
            return (TRUE);
        }

        DELAY(1000);
    }

    mb();

    tmp = atomic_load_acq_long(&sc->sp_state);
    if (tmp & mask) {
        BLOGE(sc, "Filtering completion timed out: "
                  "sp_state 0x%lx, mask 0x%lx\n",
              tmp, mask);
        return (FALSE);
    }

    return (FALSE);
}
