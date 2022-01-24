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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXCOUNT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char** extradata ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 

void
FUNC7(void)
{
	FILE *fpin;
	FILE *fpout;
	int i;

	for (i = 0; i < MAXCOUNT; i++)
		extradata[i] = (char *)FUNC1(1, 20);


	if ((fpin = FUNC5()) == NULL)
		return;

	if ((fpout = FUNC6()) == NULL) {
		FUNC4(fpin);
		return;
	}

	if (FUNC0(fpin, fpout))
		return;

	FUNC3(fpout);
	FUNC2(fpout);
}