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
struct ucom_super_softc {int sc_flag; int sc_subunits; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/ * sc_sysctl_ttyports; int /*<<< orphan*/ * sc_sysctl_ttyname; } ;
struct ucom_softc {int sc_flag; } ;

/* Variables and functions */
 int UCOM_FLAG_ATTACHED ; 
 int UCOM_FLAG_WAIT_REFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ucom_super_softc*,struct ucom_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucom_super_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucom_super_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct ucom_super_softc *ssc, struct ucom_softc *sc)
{
	int subunit;

	if (!(ssc->sc_flag & UCOM_FLAG_ATTACHED))
		return;		/* not initialized */

	if (ssc->sc_sysctl_ttyname != NULL) {
		FUNC0(ssc->sc_sysctl_ttyname, 1, 0);
		ssc->sc_sysctl_ttyname = NULL;
	}

	if (ssc->sc_sysctl_ttyports != NULL) {
		FUNC0(ssc->sc_sysctl_ttyports, 1, 0);
		ssc->sc_sysctl_ttyports = NULL;
	}

	FUNC4(&ssc->sc_tq);

	for (subunit = 0; subunit < ssc->sc_subunits; subunit++) {
		if (sc[subunit].sc_flag & UCOM_FLAG_ATTACHED) {

			FUNC1(ssc, &sc[subunit]);

			/* avoid duplicate detach */
			sc[subunit].sc_flag &= ~UCOM_FLAG_ATTACHED;
		}
	}
	FUNC5(&ssc->sc_tq);

	FUNC3(ssc);

	if (ssc->sc_flag & UCOM_FLAG_WAIT_REFS)
		FUNC2(ssc);

	/* make sure we don't detach twice */
	ssc->sc_flag &= ~UCOM_FLAG_ATTACHED;
}