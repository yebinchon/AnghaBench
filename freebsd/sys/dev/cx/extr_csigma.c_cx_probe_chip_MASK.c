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
typedef  int /*<<< orphan*/  port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REVCL31_MAX ; 
 int REVCL31_MIN ; 
 int REVCL_MAX ; 
 int REVCL_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (port_t base)
{
	int rev, newrev, count;

	/* Wait up to 10 msec for revision code to appear after reset. */
	rev = 0;
	for (count=0; rev==0; ++count) {
		if (count >= 20000)
			return (0); /* reset failed */
		rev = FUNC2 (FUNC0(base));
	}

	/* Read and check the global firmware revision code. */
	if (! (rev>=REVCL_MIN && rev<=REVCL_MAX) &&
	    ! (rev>=REVCL31_MIN && rev<=REVCL31_MAX))
		return (0);	/* CD2400/2431 revision does not match */

	/* Reset the chip. */
	if (! FUNC1 (base))
		return (0);

	/* Read and check the new global firmware revision code. */
	newrev = FUNC2 (FUNC0(base));
	if (newrev != rev)
		return (0);	/* revision changed */

	/* Yes, we really have CD2400/2431 chip here. */
	return (1);
}