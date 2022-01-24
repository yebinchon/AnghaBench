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

/* Variables and functions */
 unsigned char* FUNC0 (int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t) ; 

void
FUNC3(int regnum)
{
	unsigned char *regp;
	size_t regsz;

	regp = FUNC0(regnum, &regsz);
	if (regp == NULL) {
		/* Register unavailable. */
		while (regsz--) {
			FUNC1('x');
			FUNC1('x');
		}
	} else
		FUNC2(regp, regsz);
}