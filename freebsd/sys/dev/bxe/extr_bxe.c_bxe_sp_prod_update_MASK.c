#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bxe_softc {TYPE_1__* bar; int /*<<< orphan*/  spq_prod_idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 size_t BAR0 ; 
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline
void FUNC5(struct bxe_softc *sc)
{
    int func = FUNC1(sc);

    /*
     * Make sure that BD data is updated before writing the producer.
     * BD data is written to the memory, the producer is read from the
     * memory, thus we need a full memory barrier to ensure the ordering.
     */
    FUNC4();

    FUNC0(sc, (BAR_XSTRORM_INTMEM + FUNC2(func)),
             sc->spq_prod_idx);

    FUNC3(sc->bar[BAR0].tag, sc->bar[BAR0].handle, 0, 0,
                      BUS_SPACE_BARRIER_WRITE);
}