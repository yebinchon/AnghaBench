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
 int PCATCH ; 
 int SPKRPRI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  endtone ; 
 unsigned int hz ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*,int) ; 

__attribute__((used)) static void
FUNC9(unsigned int thz, unsigned int centisecs)
{
	int sps, timo;

	if (thz <= 0)
		return;

#ifdef DEBUG
	(void) printf("tone: thz=%d centisecs=%d\n", thz, centisecs);
#endif /* DEBUG */

	/* set timer to generate clicks at given frequency in Hertz */
	sps = FUNC3();

	if (FUNC5()) {
		/* enter list of waiting procs ??? */
		FUNC4(sps);
		return;
	}
	FUNC4(sps);
	FUNC0();
	FUNC7(thz);
	FUNC1();

	/*
	 * Set timeout to endtone function, then give up the timeslice.
	 * This is so other processes can execute while the tone is being
	 * emitted.
	 */
	timo = centisecs * hz / 100;
	if (timo > 0)
		FUNC8(&endtone, SPKRPRI | PCATCH, "spkrtn", timo);
	sps = FUNC3();
	FUNC6();
	FUNC4(sps);
}