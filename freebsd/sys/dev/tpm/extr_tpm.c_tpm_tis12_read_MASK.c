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
struct tpm_softc {int /*<<< orphan*/  sc_bh; int /*<<< orphan*/  sc_bt; int /*<<< orphan*/  sc_read; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  TPM_DATA ; 
 int TPM_PARAM_SIZE ; 
 int /*<<< orphan*/  TPM_READ_TMO ; 
 int TPM_STS_DATA_AVAIL ; 
 int TPM_STS_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 int FUNC3 (struct tpm_softc*) ; 
 int FUNC4 (struct tpm_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct tpm_softc *sc, void *buf, int len, size_t *count,
    int flags)
{
	u_int8_t *p = buf;
	size_t cnt;
	int rv, n, bcnt;

#ifdef TPM_DEBUG
	printf("tpm_tis12_read: len %d\n", len);
#endif
	cnt = 0;
	while (len > 0) {
		if ((rv = FUNC4(sc, TPM_STS_DATA_AVAIL | TPM_STS_VALID,
		    TPM_READ_TMO, sc->sc_read)))
			return rv;

		bcnt = FUNC3(sc);
		n = FUNC0(len, bcnt);
#ifdef TPM_DEBUG
		printf("tpm_tis12_read: fetching %d, burst is %d\n", n, bcnt);
#endif
		for (; n--; len--) {
			*p++ = FUNC1(sc->sc_bt, sc->sc_bh, TPM_DATA);
			cnt++;
		}

		if ((flags & TPM_PARAM_SIZE) == 0 && cnt >= 6)
			break;
	}
#ifdef TPM_DEBUG
	printf("tpm_tis12_read: read %zd bytes, len %d\n", cnt, len);
#endif

	if (count)
		*count = cnt;

	return 0;
}