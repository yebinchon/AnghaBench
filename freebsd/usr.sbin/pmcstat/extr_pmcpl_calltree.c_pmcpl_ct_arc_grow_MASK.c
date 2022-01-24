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
struct pmcpl_ct_arc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  PMCPL_CT_GROWSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct pmcpl_ct_arc* FUNC3 (struct pmcpl_ct_arc*,unsigned int,int) ; 

__attribute__((used)) static void
FUNC4(int cursize, int *maxsize, struct pmcpl_ct_arc **items)
{
	unsigned int nmaxsize;

	if (cursize < *maxsize)
		return;

	nmaxsize = *maxsize + FUNC2(cursize + 1 - *maxsize, PMCPL_CT_GROWSIZE);
	*items = FUNC3(*items, nmaxsize, sizeof(struct pmcpl_ct_arc));
	if (*items == NULL)
		FUNC1(EX_SOFTWARE, "ERROR: out of memory");
	FUNC0((char *)*items + *maxsize * sizeof(struct pmcpl_ct_arc),
	    (nmaxsize - *maxsize) * sizeof(struct pmcpl_ct_arc));
	*maxsize = nmaxsize;
}