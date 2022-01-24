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
typedef  int /*<<< orphan*/  u_int32_t ;
struct cryptocap {scalar_t__* cc_alg; scalar_t__* cc_max_op_len; } ;

/* Variables and functions */
 int CRYPTO_ALGORITHM_MAX ; 
 int CRYPTO_ALGORITHM_MIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
 struct cryptocap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cryptocap*) ; 

int
FUNC4(u_int32_t driverid, int alg)
{
	struct cryptocap *cap;
	int i, err;

	FUNC0();
	cap = FUNC2(driverid);
	if (cap != NULL &&
	    (CRYPTO_ALGORITHM_MIN <= alg && alg <= CRYPTO_ALGORITHM_MAX) &&
	    cap->cc_alg[alg] != 0) {
		cap->cc_alg[alg] = 0;
		cap->cc_max_op_len[alg] = 0;

		/* Was this the last algorithm ? */
		for (i = 1; i <= CRYPTO_ALGORITHM_MAX; i++)
			if (cap->cc_alg[i] != 0)
				break;

		if (i == CRYPTO_ALGORITHM_MAX + 1)
			FUNC3(cap);
		err = 0;
	} else
		err = EINVAL;
	FUNC1();

	return err;
}