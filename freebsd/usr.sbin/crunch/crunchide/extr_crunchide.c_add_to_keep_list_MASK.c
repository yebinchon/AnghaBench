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
struct keep {struct keep* next; int /*<<< orphan*/ * sym; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct keep* keep_list ; 
 scalar_t__ FUNC2 (int) ; 
 char* pname ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

void
FUNC5(char *symbol)
{
    struct keep *newp, *prevp, *curp;
    int cmp;

    cmp = 0;

    for(curp = keep_list, prevp = NULL; curp; prevp = curp, curp = curp->next)
	if((cmp = FUNC3(symbol, curp->sym)) <= 0) break;

    if(curp && cmp == 0)
	return;	/* already in table */

    newp = (struct keep *) FUNC2(sizeof(struct keep));
    if(newp) newp->sym = FUNC4(symbol);
    if(newp == NULL || newp->sym == NULL) {
	FUNC1(stderr, "%s: out of memory for keep list\n", pname);
	FUNC0(1);
    }

    newp->next = curp;
    if(prevp) prevp->next = newp;
    else keep_list = newp;
}