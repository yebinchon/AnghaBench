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
struct bridge_softc {int /*<<< orphan*/  sc_rtlist; int /*<<< orphan*/  sc_rthash_key; int /*<<< orphan*/ * sc_rthash; } ;

/* Variables and functions */
 int BRIDGE_RTHASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bridge_softc *sc)
{
	int i;

	sc->sc_rthash = FUNC2(sizeof(*sc->sc_rthash) * BRIDGE_RTHASH_SIZE,
	    M_DEVBUF, M_WAITOK);

	for (i = 0; i < BRIDGE_RTHASH_SIZE; i++)
		FUNC0(&sc->sc_rthash[i]);

	sc->sc_rthash_key = FUNC1();
	FUNC0(&sc->sc_rtlist);
}