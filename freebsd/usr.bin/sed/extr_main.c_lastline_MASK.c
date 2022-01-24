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
 int EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  infile ; 
 int /*<<< orphan*/ * inplace ; 
 scalar_t__ ispan ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

int
FUNC4(void)
{
	int ch;

	if (FUNC0(infile)) {
		return !(
		    (inplace == NULL || ispan) &&
		    FUNC2());
	}
	if ((ch = FUNC1(infile)) == EOF) {
		return !(
		    (inplace == NULL || ispan) &&
		    FUNC2());
	}
	FUNC3(ch, infile);
	return (0);
}