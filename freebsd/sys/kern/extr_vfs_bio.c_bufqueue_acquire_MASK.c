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
struct buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufqueue*) ; 
 struct bufqueue* FUNC2 (struct buf*) ; 

__attribute__((used)) static struct bufqueue *
FUNC3(struct buf *bp)
{
	struct bufqueue *bq, *nbq;

	/*
	 * bp can be pushed from a per-cpu queue to the
	 * cleanq while we're waiting on the lock.  Retry
	 * if the queues don't match.
	 */
	bq = FUNC2(bp);
	FUNC0(bq);
	for (;;) {
		nbq = FUNC2(bp);
		if (bq == nbq)
			break;
		FUNC1(bq);
		FUNC0(nbq);
		bq = nbq;
	}
	return (bq);
}