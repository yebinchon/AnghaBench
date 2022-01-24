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
struct tpm_softc {int sc_stat; int /*<<< orphan*/  sc_write; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; int /*<<< orphan*/  sc_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_READY_TMO ; 
 int /*<<< orphan*/  TPM_READ_TMO ; 
 int /*<<< orphan*/  TPM_STS ; 
 int /*<<< orphan*/  TPM_STS_BITS ; 
 int TPM_STS_CMD_READY ; 
 int TPM_STS_DATA_AVAIL ; 
 int TPM_STS_VALID ; 
 int UIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct tpm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpm_softc*) ; 
 int FUNC4 (struct tpm_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct tpm_softc *sc, int flag)
{
	int rv;

	if (flag == UIO_READ) {
		rv = FUNC4(sc, TPM_STS_DATA_AVAIL | TPM_STS_VALID,
		    TPM_READ_TMO, sc->sc_read);
		return rv;
	}

	/* Own our (0th) locality. */
	if ((rv = FUNC2(sc, 0)) != 0)
		return rv;

	sc->sc_stat = FUNC3(sc);
	if (sc->sc_stat & TPM_STS_CMD_READY) {
#ifdef TPM_DEBUG
		printf("tpm_tis12_start: UIO_WRITE status %b\n", sc->sc_stat,
		   TPM_STS_BITS);
#endif
		return 0;
	}

#ifdef TPM_DEBUG
	printf("tpm_tis12_start: UIO_WRITE readying chip\n");
#endif

	/* Abort previous and restart. */
	FUNC0(sc->sc_bt, sc->sc_bh, TPM_STS, TPM_STS_CMD_READY);
	if ((rv = FUNC4(sc, TPM_STS_CMD_READY, TPM_READY_TMO,
	    sc->sc_write))) {
#ifdef TPM_DEBUG
		printf("tpm_tis12_start: UIO_WRITE readying failed %d\n", rv);
#endif
		return rv;
	}

#ifdef TPM_DEBUG
	printf("tpm_tis12_start: UIO_WRITE readying done\n");
#endif

	return 0;
}