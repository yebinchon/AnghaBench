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
struct twe_softc {int /*<<< orphan*/  twe_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWE_CONTROL_DISABLE_INTERRUPTS ; 
 int /*<<< orphan*/  TWE_STATE_INTEN ; 

void
FUNC1(struct twe_softc *sc)
{
    FUNC0(sc, TWE_CONTROL_DISABLE_INTERRUPTS);
    sc->twe_state &= ~TWE_STATE_INTEN;
}