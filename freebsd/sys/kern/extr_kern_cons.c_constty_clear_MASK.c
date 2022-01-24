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
 int /*<<< orphan*/  M_TTYCONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * consbuf ; 
 int /*<<< orphan*/  conscallout ; 
 int /*<<< orphan*/  consmsgbuf ; 
 int /*<<< orphan*/ * constty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
	int c;

	constty = NULL;
	if (consbuf == NULL)
		return;
	FUNC0(&conscallout);
	while ((c = FUNC3(&consmsgbuf)) != -1)
		FUNC1(c);
	FUNC2(consbuf, M_TTYCONS);
	consbuf = NULL;
}