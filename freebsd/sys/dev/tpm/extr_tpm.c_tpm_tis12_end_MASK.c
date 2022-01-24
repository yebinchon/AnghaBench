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
struct tpm_softc {int sc_stat; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; int /*<<< orphan*/  sc_read; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TPM_ACCESS ; 
 int /*<<< orphan*/  TPM_ACCESS_ACTIVE_LOCALITY ; 
 int /*<<< orphan*/  TPM_READ_TMO ; 
 int /*<<< orphan*/  TPM_STS ; 
 int /*<<< orphan*/  TPM_STS_BITS ; 
 int /*<<< orphan*/  TPM_STS_CMD_READY ; 
 int TPM_STS_DATA_AVAIL ; 
 int TPM_STS_DATA_EXPECT ; 
 int /*<<< orphan*/  TPM_STS_GO ; 
 int /*<<< orphan*/  TPM_STS_VALID ; 
 int UIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct tpm_softc*) ; 
 int FUNC3 (struct tpm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct tpm_softc *sc, int flag, int err)
{
	int rv = 0;

	if (flag == UIO_READ) {
		if ((rv = FUNC3(sc, TPM_STS_VALID, TPM_READ_TMO,
		    sc->sc_read)))
			return rv;

		/* Still more data? */
		sc->sc_stat = FUNC2(sc);
		if (!err && ((sc->sc_stat & TPM_STS_DATA_AVAIL) == TPM_STS_DATA_AVAIL)) {
#ifdef TPM_DEBUG
			printf("tpm_tis12_end: read failed stat=%b\n",
			    sc->sc_stat, TPM_STS_BITS);
#endif
			rv = EIO;
		}

		FUNC0(sc->sc_bt, sc->sc_bh, TPM_STS,
		    TPM_STS_CMD_READY);

		/* Release our (0th) locality. */
		FUNC0(sc->sc_bt, sc->sc_bh,TPM_ACCESS,
		    TPM_ACCESS_ACTIVE_LOCALITY);
	} else {
		/* Hungry for more? */
		sc->sc_stat = FUNC2(sc);
		if (!err && (sc->sc_stat & TPM_STS_DATA_EXPECT)) {
#ifdef TPM_DEBUG
			printf("tpm_tis12_end: write failed stat=%b\n",
			    sc->sc_stat, TPM_STS_BITS);
#endif
			rv = EIO;
		}

		FUNC0(sc->sc_bt, sc->sc_bh, TPM_STS,
		    err ? TPM_STS_CMD_READY : TPM_STS_GO);
	}

	return rv;
}