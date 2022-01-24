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
typedef  int /*<<< orphan*/  u_int ;
struct xicp_softc {scalar_t__ nintvecs; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * intvecs; } ;
typedef  void xicp_intvec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline struct xicp_intvec *
FUNC4(struct xicp_softc *sc, u_int irq, void **priv)
{
	if (*priv == NULL) {
		FUNC0(sc->nintvecs + 1 < FUNC3(sc->intvecs),
			("Too many XICP interrupts"));
		FUNC1(&sc->sc_mtx);
		*priv = &sc->intvecs[sc->nintvecs++];
		FUNC2(&sc->sc_mtx);
	}

	return (*priv);
}