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
struct mwl_softc {int /*<<< orphan*/  sc_nrxfree; int /*<<< orphan*/  sc_rxfree; } ;
struct mwl_jumbo {int dummy; } ;

/* Variables and functions */
 struct mwl_jumbo* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mwl_jumbo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static __inline void
FUNC4(struct mwl_softc *sc, void *data)
{
	struct mwl_jumbo *buf;

	/* XXX bounds check data */
	FUNC1(sc);
	buf = FUNC0(data);
	FUNC3(&sc->sc_rxfree, buf, next);
	sc->sc_nrxfree++;
	FUNC2(sc);
}