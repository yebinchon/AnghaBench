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
struct mips_pic_intr {int consumers; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*) ; 
 struct mips_pic_intr* FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  mips_pic_mtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(device_t child, struct resource *r)
{
	struct mips_pic_intr	*intr;
	int			 error;

	/* Is this one of our shared MIPS interrupts? */
	if ((intr = FUNC2(r)) == NULL) {
		/* Delegate to standard INTRNG deactivation */
		return (FUNC1(child, r));
	}

	/* Decrement consumer count and request deactivation if required */
	FUNC3(&mips_pic_mtx);
	FUNC0(intr->consumers > 0, ("refcount overrelease"));

	if (intr->consumers == 1) {
		if ((error = FUNC1(child, r))) {
			FUNC4(&mips_pic_mtx);
			return (error);
		}
	}
	intr->consumers--;
	
	FUNC4(&mips_pic_mtx);
	return (0);
}