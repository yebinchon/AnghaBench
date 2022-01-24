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
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct cryptocap {int* cc_alg; int* cc_max_op_len; scalar_t__ cc_sessions; int /*<<< orphan*/  cc_dev; } ;

/* Variables and functions */
 int CRYPTO_ALGORITHM_MAX ; 
 int CRYPTO_ALGORITHM_MIN ; 
 int CRYPTO_ALG_FLAG_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
 scalar_t__ bootverbose ; 
 struct cryptocap* FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int) ; 

int
FUNC5(u_int32_t driverid, int alg, u_int16_t maxoplen,
    u_int32_t flags)
{
	struct cryptocap *cap;
	int err;

	FUNC0();

	cap = FUNC2(driverid);
	/* NB: algorithms are in the range [1..max] */
	if (cap != NULL &&
	    (CRYPTO_ALGORITHM_MIN <= alg && alg <= CRYPTO_ALGORITHM_MAX)) {
		/*
		 * XXX Do some performance testing to determine placing.
		 * XXX We probably need an auxiliary data structure that
		 * XXX describes relative performances.
		 */

		cap->cc_alg[alg] = flags | CRYPTO_ALG_FLAG_SUPPORTED;
		cap->cc_max_op_len[alg] = maxoplen;
		if (bootverbose)
			FUNC4("crypto: %s registers alg %u flags %u maxoplen %u\n"
				, FUNC3(cap->cc_dev)
				, alg
				, flags
				, maxoplen
			);
		cap->cc_sessions = 0;		/* Unmark */
		err = 0;
	} else
		err = EINVAL;

	FUNC1();
	return err;
}