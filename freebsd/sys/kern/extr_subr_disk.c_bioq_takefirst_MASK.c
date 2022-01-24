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
struct bio_queue_head {int /*<<< orphan*/  queue; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_queue_head*,struct bio*) ; 

struct bio *
FUNC2(struct bio_queue_head *head)
{
	struct bio *bp;

	bp = FUNC0(&head->queue);
	if (bp != NULL)
		FUNC1(head, bp);
	return (bp);
}