#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct bxe_softc {int /*<<< orphan*/  sp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline uint8_t
FUNC4(struct bxe_softc *sc,
                 unsigned long    mask)
{
    unsigned long tmp;
    int tout = 5000; /* wait for 5 secs tops */

    while (tout--) {
        FUNC3();
        if (!(FUNC2(&sc->sp_state) & mask)) {
            return (TRUE);
        }

        FUNC1(1000);
    }

    FUNC3();

    tmp = FUNC2(&sc->sp_state);
    if (tmp & mask) {
        FUNC0(sc, "Filtering completion timed out: "
                  "sp_state 0x%lx, mask 0x%lx\n",
              tmp, mask);
        return (FALSE);
    }

    return (FALSE);
}