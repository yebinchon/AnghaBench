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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ah ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * ofp ; 
 int /*<<< orphan*/  rh ; 
 int /*<<< orphan*/  sh ; 
 int /*<<< orphan*/ * yyin ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7 (FILE *fp, FILE *outfp)
{
	FUNC0(&sh);
	FUNC0(&rh);
	FUNC0(&ah);

	ofp = outfp;
	yyin = fp;
	FUNC6();

	if (FUNC1() == 0 &&
	    FUNC2() == 0 &&
	    FUNC3() == 0)
		return (-1);

	FUNC5(outfp, "#ifdef NDIS_REGVALS\n");
	FUNC4();
	FUNC5(outfp, "#endif /* NDIS_REGVALS */\n");

	return (0);
}