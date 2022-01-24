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
struct cryptocap {int* cc_kalg; int /*<<< orphan*/  cc_dev; } ;

/* Variables and functions */
 int CRK_ALGORITHM_MAX ; 
 int CRK_ALGORITM_MIN ; 
 int CRYPTO_ALG_FLAG_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
 scalar_t__ bootverbose ; 
 struct cryptocap* FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 

int
FUNC5(u_int32_t driverid, int kalg, u_int32_t flags)
{
	struct cryptocap *cap;
	int err;

	FUNC0();

	cap = FUNC2(driverid);
	if (cap != NULL &&
	    (CRK_ALGORITM_MIN <= kalg && kalg <= CRK_ALGORITHM_MAX)) {
		/*
		 * XXX Do some performance testing to determine placing.
		 * XXX We probably need an auxiliary data structure that
		 * XXX describes relative performances.
		 */

		cap->cc_kalg[kalg] = flags | CRYPTO_ALG_FLAG_SUPPORTED;
		if (bootverbose)
			FUNC4("crypto: %s registers key alg %u flags %u\n"
				, FUNC3(cap->cc_dev)
				, kalg
				, flags
			);
		err = 0;
	} else
		err = EINVAL;

	FUNC1();
	return err;
}