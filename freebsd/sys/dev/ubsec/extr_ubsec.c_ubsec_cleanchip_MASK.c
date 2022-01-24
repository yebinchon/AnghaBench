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
struct ubsec_softc {scalar_t__ sc_nqchip; int /*<<< orphan*/  sc_qchip; } ;
struct ubsec_q {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ubsec_q* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC3 (struct ubsec_softc*,struct ubsec_q*) ; 

__attribute__((used)) static void
FUNC4(struct ubsec_softc *sc)
{
	struct ubsec_q *q;

	while (!FUNC0(&sc->sc_qchip)) {
		q = FUNC1(&sc->sc_qchip);
		FUNC2(&sc->sc_qchip, q_next);
		FUNC3(sc, q);
	}
	sc->sc_nqchip = 0;
}