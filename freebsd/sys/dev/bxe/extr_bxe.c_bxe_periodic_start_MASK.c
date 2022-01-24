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
struct bxe_softc {int /*<<< orphan*/  periodic_callout; int /*<<< orphan*/  periodic_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERIODIC_GO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bxe_periodic_callout_func ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bxe_softc*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC2(struct bxe_softc *sc)
{
    FUNC0(&sc->periodic_flags, PERIODIC_GO);
    FUNC1(&sc->periodic_callout, hz, bxe_periodic_callout_func, sc);
}