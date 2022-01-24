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
typedef  scalar_t__ uoff_t ;
struct bio_queue_head {scalar_t__ batched; int /*<<< orphan*/  total; int /*<<< orphan*/  queue; struct bio* insert_point; } ;
struct bio {int bio_flags; scalar_t__ bio_cmd; } ;

/* Variables and functions */
 scalar_t__ BIO_DELETE ; 
 int BIO_ORDERED ; 
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_queue ; 
 scalar_t__ bioq_batchsize ; 
 scalar_t__ FUNC4 (struct bio_queue_head*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio_queue_head*,struct bio*) ; 

void
FUNC6(struct bio_queue_head *head, struct bio *bp)
{
	struct bio *cur, *prev;
	uoff_t key;

	if ((bp->bio_flags & BIO_ORDERED) != 0) {
		/*
		 * Ordered transactions can only be dispatched
		 * after any currently queued transactions.  They
		 * also have barrier semantics - no transactions
		 * queued in the future can pass them.
		 */
		FUNC5(head, bp);
		return;
	}

	/*
	 * We should only sort requests of types that have concept of offset.
	 * Other types, such as BIO_FLUSH or BIO_ZONE, may imply some degree
	 * of ordering even if strict ordering is not requested explicitly.
	 */
	if (bp->bio_cmd != BIO_READ && bp->bio_cmd != BIO_WRITE &&
	    bp->bio_cmd != BIO_DELETE) {
		FUNC5(head, bp);
		return;
	}

	if (bioq_batchsize > 0 && head->batched > bioq_batchsize) {
		FUNC5(head, bp);
		return;
	}

	prev = NULL;
	key = FUNC4(head, bp);
	cur = FUNC0(&head->queue);

	if (head->insert_point) {
		prev = head->insert_point;
		cur = FUNC3(head->insert_point, bio_queue);
	}

	while (cur != NULL && key >= FUNC4(head, cur)) {
		prev = cur;
		cur = FUNC3(cur, bio_queue);
	}

	if (prev == NULL)
		FUNC2(&head->queue, bp, bio_queue);
	else
		FUNC1(&head->queue, prev, bp, bio_queue);
	head->total++;
	head->batched++;
}