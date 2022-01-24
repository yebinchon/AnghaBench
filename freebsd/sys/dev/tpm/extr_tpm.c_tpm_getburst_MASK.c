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
struct tpm_softc {int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int PCATCH ; 
 int PRIBIO ; 
 int /*<<< orphan*/  TPM_BURST_TMO ; 
 scalar_t__ TPM_STS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpm_softc*,int,char*,int) ; 

int
FUNC4(struct tpm_softc *sc)
{
	int burst, to, rv;

	to = FUNC2(TPM_BURST_TMO);

	burst = 0;
	while (burst == 0 && to--) {
		/*
		 * Burst count has to be read from bits 8 to 23 without
		 * touching any other bits, eg. the actual status bits 0
		 * to 7.
		 */
		burst = FUNC0(sc->sc_bt, sc->sc_bh, TPM_STS + 1);
		burst |= FUNC0(sc->sc_bt, sc->sc_bh, TPM_STS + 2)
		    << 8;
#ifdef TPM_DEBUG
		printf("tpm_getburst: read %d\n", burst);
#endif
		if (burst)
			return burst;

		rv = FUNC3(sc, PRIBIO | PCATCH, "tpm_getburst", 1);
		if (rv && rv != EWOULDBLOCK) {
			return 0;
		}
	}

	return 0;
}