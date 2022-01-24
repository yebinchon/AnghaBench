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
typedef  int off_t ;

/* Variables and functions */
 int column ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* queue ; 
 scalar_t__ queuelen ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(void)
{
	off_t i;

	/* Merge spaces at the start of a sentence to tabs if possible. */
	if ((column % 8) == 0) {
		for (i = 0; i < column; i++)
			if (!FUNC2(i + 1, ' '))
				break;
		if (i == column) {
			queuelen -= column;
			for (i = 0; i < column; i += 8)
				queue[queuelen++] = '\t';
		}
	}

	if (FUNC1(queue, 1, queuelen, stdout) != queuelen) {
		FUNC3("write");
		FUNC0(1);
	}
	queuelen = 0;
}