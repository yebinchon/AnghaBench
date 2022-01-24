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
struct cryptocap {scalar_t__ cc_kqblocked; scalar_t__ cc_qblocked; } ;

/* Variables and functions */
 int CRYPTO_ASYMQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int CRYPTO_SYMQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  crp_q ; 
 scalar_t__ crp_sleep ; 
 struct cryptocap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(u_int32_t driverid, int what)
{
	struct cryptocap *cap;
	int err;

	FUNC0();
	cap = FUNC2(driverid);
	if (cap != NULL) {
		if (what & CRYPTO_SYMQ)
			cap->cc_qblocked = 0;
		if (what & CRYPTO_ASYMQ)
			cap->cc_kqblocked = 0;
		if (crp_sleep)
			FUNC3(&crp_q);
		err = 0;
	} else
		err = EINVAL;
	FUNC1();

	return err;
}