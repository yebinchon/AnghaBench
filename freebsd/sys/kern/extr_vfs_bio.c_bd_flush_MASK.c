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
struct bufqueue {scalar_t__ bq_len; int /*<<< orphan*/  bq_subqueue; int /*<<< orphan*/  bq_queue; } ;
struct bufdomain {struct bufqueue* bd_cleanq; scalar_t__ bd_wanted; } ;
struct buf {int /*<<< orphan*/  b_subqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufqueue*) ; 
 struct buf* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_freelist ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC7(struct bufdomain *bd, struct bufqueue *bq)
{
	struct buf *bp;

	FUNC2(bq);
	if (bq != bd->bd_cleanq) {
		FUNC0(bd);
		while ((bp = FUNC3(&bq->bq_queue)) != NULL) {
			FUNC5(&bq->bq_queue, bp, b_freelist);
			FUNC4(&bd->bd_cleanq->bq_queue, bp,
			    b_freelist);
			bp->b_subqueue = bd->bd_cleanq->bq_subqueue;
		}
		bd->bd_cleanq->bq_len += bq->bq_len;
		bq->bq_len = 0;
	}
	if (bd->bd_wanted) {
		bd->bd_wanted = 0;
		FUNC6(&bd->bd_wanted);
	}
	if (bq != bd->bd_cleanq)
		FUNC1(bd);
}