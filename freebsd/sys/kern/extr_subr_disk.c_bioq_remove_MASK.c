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
struct bio_queue_head {int /*<<< orphan*/  total; int /*<<< orphan*/  queue; struct bio* insert_point; scalar_t__ last_offset; } ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_offset; } ;

/* Variables and functions */
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_queue ; 

void
FUNC2(struct bio_queue_head *head, struct bio *bp)
{

	if (head->insert_point == NULL) {
		if (bp == FUNC0(&head->queue))
			head->last_offset = bp->bio_offset + bp->bio_length;
	} else if (bp == head->insert_point)
		head->insert_point = NULL;

	FUNC1(&head->queue, bp, bio_queue);
	head->total--;
}