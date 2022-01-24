#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_long ;
struct TYPE_9__ {unsigned int filenum; size_t fieldno; } ;
struct TYPE_8__ {size_t joinf; scalar_t__ number; } ;
struct TYPE_7__ {size_t fieldcnt; } ;
typedef  TYPE_1__ LINE ;
typedef  TYPE_2__ INPUT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ needsep ; 
 TYPE_6__* olist ; 
 size_t olistcnt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(INPUT *F, LINE *lp)
{
	u_long cnt;

	/*
	 * Output a single line from one of the files, according to the
	 * join rules.  This happens when we are writing unmatched single
	 * lines.  Output empty fields in the right places.
	 */
	if (olist)
		for (cnt = 0; cnt < olistcnt; ++cnt) {
			if (olist[cnt].filenum == (unsigned)F->number)
				FUNC2(lp, olist[cnt].fieldno, 0);
			else if (olist[cnt].filenum == 0)
				FUNC2(lp, F->joinf, 0);
			else
				FUNC2(lp, 0, 1);
		}
	else {
		/*
		 * Output the join field, then the remaining fields.
		 */
		FUNC2(lp, F->joinf, 0);
		for (cnt = 0; cnt < lp->fieldcnt; ++cnt)
			if (F->joinf != cnt)
				FUNC2(lp, cnt, 0);
	}
	(void)FUNC3("\n");
	if (FUNC1(stdout))
		FUNC0(1, "stdout");
	needsep = 0;
}