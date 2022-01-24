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
struct cryptocap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EINVAL ; 
 struct cryptocap* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cryptocap*) ; 

int
FUNC4(u_int32_t driverid)
{
	struct cryptocap *cap;
	int err;

	FUNC0();
	cap = FUNC2(driverid);
	if (cap != NULL) {
		FUNC3(cap);
		err = 0;
	} else
		err = EINVAL;
	FUNC1();

	return err;
}