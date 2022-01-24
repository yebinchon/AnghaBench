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
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3(struct mtx *mtx, int timo)
{
	if (mtx != NULL)
		FUNC1(mtx);

	/*
	 * Add one tick to the timeout so that we don't return too
	 * early! Note that pause() will assert that the passed
	 * timeout is positive and non-zero!
	 */
	FUNC2("USBWAIT", timo + 1);

	if (mtx != NULL)
		FUNC0(mtx);
}