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
struct bxe_softc {scalar_t__ panic; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ECORE_IO ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long*) ; 
 int ECORE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delay_us ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static inline int FUNC7(struct bxe_softc *sc, int state,
				   unsigned long *pstate)
{
	/* can take a while if any port is running */
	int cnt = 5000;


	if (FUNC0(sc))
		cnt *= 20;

	FUNC3(sc, "waiting for state to become %d\n", state);

	FUNC2();
	while (cnt--) {
		if (!FUNC4(state, pstate)) {
#ifdef ECORE_STOP_ON_ERROR
			ECORE_MSG(sc, "exit  (cnt %d)\n", 5000 - cnt);
#endif
			return ECORE_SUCCESS;
		}

		FUNC5(sc, delay_us);

		if (sc->panic)
			return ECORE_IO;
	}

	/* timeout! */
	FUNC1("timeout waiting for state %d\n", state);
#ifdef ECORE_STOP_ON_ERROR
	ecore_panic();
#endif

	return ECORE_TIMEOUT;
}