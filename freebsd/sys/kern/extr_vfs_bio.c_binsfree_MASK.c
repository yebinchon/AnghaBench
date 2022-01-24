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
struct bufqueue {int dummy; } ;
struct bufdomain {scalar_t__ bd_lim; struct bufqueue bd_dirtyq; struct bufqueue* bd_cleanq; struct bufqueue* bd_subq; } ;
struct buf {int b_flags; int b_qindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int B_REMFREE ; 
 int B_REUSE ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int QUEUE_CLEAN ; 
 int QUEUE_DIRTY ; 
 int /*<<< orphan*/  FUNC5 (struct bufqueue*,struct buf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufqueue*,struct buf*) ; 
 struct bufdomain* FUNC7 (struct buf*) ; 
 struct bufqueue* FUNC8 (struct buf*) ; 
 int /*<<< orphan*/  cpuid ; 

__attribute__((used)) static void
FUNC9(struct buf *bp, int qindex)
{
	struct bufdomain *bd;
	struct bufqueue *bq;

	FUNC3(qindex == QUEUE_CLEAN || qindex == QUEUE_DIRTY,
	    ("binsfree: Invalid qindex %d", qindex));
	FUNC1(bp);

	/*
	 * Handle delayed bremfree() processing.
	 */
	if (bp->b_flags & B_REMFREE) {
		if (bp->b_qindex == qindex) {
			bp->b_flags |= B_REUSE;
			bp->b_flags &= ~B_REMFREE;
			FUNC2(bp);
			return;
		}
		bq = FUNC8(bp);
		FUNC6(bq, bp);
		FUNC0(bq);
	}
	bd = FUNC7(bp);
	if (qindex == QUEUE_CLEAN) {
		if (bd->bd_lim != 0)
			bq = &bd->bd_subq[FUNC4(cpuid)];
		else
			bq = bd->bd_cleanq;
	} else
		bq = &bd->bd_dirtyq;
	FUNC5(bq, bp, true);
}