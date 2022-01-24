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
 int /*<<< orphan*/  FUNC0 () ; 
 int closeopen ; 
 int closeprob ; 
 int debug ; 
 scalar_t__ debugstart ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 
 long file_size ; 
 int invl ; 
 int invlprob ; 
 scalar_t__ lite ; 
 int /*<<< orphan*/  mapped_reads ; 
 int mapped_writes ; 
 unsigned long maxfilelen ; 
 int maxoplen ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  quiet ; 
 int FUNC9 () ; 
 scalar_t__ randomoplen ; 
 scalar_t__ simulatedopcount ; 
 scalar_t__ sizechecks ; 
 scalar_t__ style ; 
 scalar_t__ testcalls ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(void)
{
	unsigned long	offset;
	unsigned long	size = maxoplen;
	unsigned long	rv = FUNC9();
	unsigned long	op = rv % (3 + !lite + mapped_writes);

	/* turn off the map read if necessary */

	if (op == 2 && !mapped_reads)
	    op = 0;

	if (simulatedopcount > 0 && testcalls == simulatedopcount)
		FUNC10();

	testcalls++;

	if (closeprob)
		closeopen = (rv >> 3) < (1 << 28) / closeprob;
	if (invlprob)
		invl = (rv >> 3) < (1 << 28) / invlprob;

	if (debugstart > 0 && testcalls >= debugstart)
		debug = 1;

	if (!quiet && testcalls < simulatedopcount && testcalls % 100000 == 0)
		FUNC8("%lu...\n", testcalls);

	/*
	 * READ:	op = 0
	 * WRITE:	op = 1
	 * MAPREAD:     op = 2
	 * TRUNCATE:	op = 3
	 * MAPWRITE:    op = 3 or 4
	 */
	if (lite ? 0 : op == 3 && style == 0) /* vanilla truncate? */
		FUNC6(FUNC9() % maxfilelen);
	else {
		if (randomoplen)
			size = FUNC9() % (maxoplen+1);
		if (lite ? 0 : op == 3)
			FUNC6(size);
		else {
			offset = FUNC9();
			if (op == 1 || op == (lite ? 3 : 4)) {
				offset %= maxfilelen;
				if (offset + size > maxfilelen)
					size = maxfilelen - offset;
				if (op != 1)
					FUNC4(offset, size);
				else
					FUNC7(offset, size);
			} else {
				if (file_size)
					offset %= file_size;
				else
					offset = 0;
				if (offset + size > file_size)
					size = file_size - offset;
				if (op != 0)
					FUNC3(offset, size);
				else
					FUNC5(offset, size);
			}
		}
	}
	if (sizechecks && testcalls > simulatedopcount)
		FUNC0();
	if (invl)
		FUNC2();
	if (closeopen)
		FUNC1();
}