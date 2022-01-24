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
struct ubsec_softc {int sc_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_q2free; } ;
struct ubsec_q2 {int dummy; } ;
struct cryptkop {int krp_op; int /*<<< orphan*/  krp_status; int /*<<< orphan*/ * krp_callback; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  CRK_MOD_EXP 129 
#define  CRK_MOD_EXP_CRT 128 
 int EINVAL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ubsec_q2* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int UBS_FLAGS_HWNORM ; 
 int /*<<< orphan*/  FUNC3 (struct cryptkop*) ; 
 struct ubsec_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  q_next ; 
 int /*<<< orphan*/  FUNC6 (struct ubsec_softc*,struct ubsec_q2*) ; 
 int FUNC7 (struct ubsec_softc*,struct cryptkop*,int) ; 
 int FUNC8 (struct ubsec_softc*,struct cryptkop*,int) ; 
 int FUNC9 (struct ubsec_softc*,struct cryptkop*,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, struct cryptkop *krp, int hint)
{
	struct ubsec_softc *sc = FUNC4(dev);
	int r;

	if (krp == NULL || krp->krp_callback == NULL)
		return (EINVAL);

	while (!FUNC0(&sc->sc_q2free)) {
		struct ubsec_q2 *q;

		q = FUNC1(&sc->sc_q2free);
		FUNC2(&sc->sc_q2free, q_next);
		FUNC6(sc, q);
	}

	switch (krp->krp_op) {
	case CRK_MOD_EXP:
		if (sc->sc_flags & UBS_FLAGS_HWNORM)
			r = FUNC7(sc, krp, hint);
		else
			r = FUNC8(sc, krp, hint);
		break;
	case CRK_MOD_EXP_CRT:
		return (FUNC9(sc, krp, hint));
	default:
		FUNC5(sc->sc_dev, "kprocess: invalid op 0x%x\n",
		    krp->krp_op);
		krp->krp_status = EOPNOTSUPP;
		FUNC3(krp);
		return (0);
	}
	return (0);			/* silence compiler */
}