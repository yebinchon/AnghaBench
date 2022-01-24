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
struct resource {int dummy; } ;
struct mips_pic_intr {scalar_t__ consumers; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ UINT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,struct resource*) ; 
 struct mips_pic_intr* FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  mips_pic_mtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(device_t child, struct resource *r)
{
	struct mips_pic_intr	*intr;
	int			 error;

	/* Is this one of our shared MIPS interrupts? */
	if ((intr = FUNC1(r)) == NULL) {
		/* Delegate to standard INTRNG activation */
		return (FUNC0(child, r));
	}

	/* Bump consumer count and request activation if required */
	FUNC2(&mips_pic_mtx);
	if (intr->consumers == UINT_MAX) {
		FUNC3(&mips_pic_mtx);
		return (ENOMEM);
	}

	if (intr->consumers == 0) {
		if ((error = FUNC0(child, r))) {
			FUNC3(&mips_pic_mtx);
			return (error);
		}
	}

	intr->consumers++;
	FUNC3(&mips_pic_mtx);

	return (0);
}