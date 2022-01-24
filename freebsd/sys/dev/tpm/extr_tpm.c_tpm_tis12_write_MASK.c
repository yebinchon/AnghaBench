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
typedef  int /*<<< orphan*/  u_int8_t ;
struct tpm_softc {int sc_stat; int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TPM_DATA ; 
 int /*<<< orphan*/  TPM_READ_TMO ; 
 int /*<<< orphan*/  TPM_STS_BITS ; 
 int TPM_STS_DATA_EXPECT ; 
 int /*<<< orphan*/  TPM_STS_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct tpm_softc*) ; 
 int FUNC3 (struct tpm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tpm_softc*) ; 
 int FUNC5 (struct tpm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tpm_softc*) ; 

int
FUNC6(struct tpm_softc *sc, void *buf, int len)
{
	u_int8_t *p = buf;
	size_t cnt;
	int rv, r;

#ifdef TPM_DEBUG
	printf("tpm_tis12_write: sc %p buf %p len %d\n", sc, buf, len);
#endif

	if ((rv = FUNC3(sc, 0)) != 0)
		return rv;

	cnt = 0;
	while (cnt < len - 1) {
		for (r = FUNC2(sc); r > 0 && cnt < len - 1; r--) {
			FUNC0(sc->sc_bt, sc->sc_bh, TPM_DATA, *p++);
			cnt++;
		}
		if ((rv = FUNC5(sc, TPM_STS_VALID, TPM_READ_TMO, sc))) {
#ifdef TPM_DEBUG
			printf("tpm_tis12_write: failed burst rv %d\n", rv);
#endif
			return rv;
		}
		sc->sc_stat = FUNC4(sc);
		if (!(sc->sc_stat & TPM_STS_DATA_EXPECT)) {
#ifdef TPM_DEBUG
			printf("tpm_tis12_write: failed rv %d stat=%b\n", rv,
			    sc->sc_stat, TPM_STS_BITS);
#endif
			return EIO;
		}
	}

	FUNC0(sc->sc_bt, sc->sc_bh, TPM_DATA, *p++);
	cnt++;

	if ((rv = FUNC5(sc, TPM_STS_VALID, TPM_READ_TMO, sc))) {
#ifdef TPM_DEBUG
		printf("tpm_tis12_write: failed last byte rv %d\n", rv);
#endif
		return rv;
	}
	if ((sc->sc_stat & TPM_STS_DATA_EXPECT) != 0) {
#ifdef TPM_DEBUG
		printf("tpm_tis12_write: failed rv %d stat=%b\n", rv,
		    sc->sc_stat, TPM_STS_BITS);
#endif
		return EIO;
	}

#ifdef TPM_DEBUG
	printf("tpm_tis12_write: wrote %d byte\n", cnt);
#endif

	return 0;
}