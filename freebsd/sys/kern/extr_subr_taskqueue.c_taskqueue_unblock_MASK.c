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
struct taskqueue {int /*<<< orphan*/  tq_context; int /*<<< orphan*/  (* tq_enqueue ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  tq_queue; int /*<<< orphan*/  tq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TQ_FLAGS_BLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct taskqueue *queue)
{

	FUNC1(queue);
	queue->tq_flags &= ~TQ_FLAGS_BLOCKED;
	if (!FUNC0(&queue->tq_queue))
		queue->tq_enqueue(queue->tq_context);
	FUNC2(queue);
}