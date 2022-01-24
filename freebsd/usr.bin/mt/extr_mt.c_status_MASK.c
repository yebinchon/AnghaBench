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
struct tape_desc {scalar_t__ t_type; char* t_name; int /*<<< orphan*/  t_erbits; int /*<<< orphan*/  t_dsbits; } ;
struct mtget {int mt_type; int mt_resid; scalar_t__ mt_erreg; scalar_t__ mt_dsreg; } ;

/* Variables and functions */
 scalar_t__ MT_ISAR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (struct mtget*) ; 
 struct tape_desc* tapes ; 

__attribute__((used)) static void
FUNC4(struct mtget *bp)
{
	const struct tape_desc *mt;

	for (mt = tapes;; mt++) {
		if (mt->t_type == 0) {
			(void)FUNC0("%d: unknown tape drive type\n",
			    bp->mt_type);
			return;
		}
		if (mt->t_type == bp->mt_type)
			break;
	}
	if(mt->t_type == MT_ISAR)
		FUNC3(bp);
	else {
		(void)FUNC0("%s tape drive, residual=%d\n", 
		    mt->t_name, bp->mt_resid);
		FUNC1("ds", (unsigned short)bp->mt_dsreg, mt->t_dsbits);
		FUNC1("\ner", (unsigned short)bp->mt_erreg, mt->t_erbits);
		(void)FUNC2('\n');
	}
}