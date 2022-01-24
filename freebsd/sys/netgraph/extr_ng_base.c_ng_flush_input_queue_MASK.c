#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ng_queue {int /*<<< orphan*/  q_flags; int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__* node_p ;
typedef  TYPE_3__* item_p ;
struct TYPE_9__ {int depth; TYPE_1__* apply; } ;
struct TYPE_8__ {struct ng_queue nd_input_queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  error; int /*<<< orphan*/  context; int /*<<< orphan*/  (* apply ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ng_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_queue*) ; 
 int /*<<< orphan*/  OP_PENDING ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  el_next ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(node_p node)
{
	struct ng_queue *ngq = &node->nd_input_queue;
	item_p item;

	FUNC1(ngq);
	while ((item = FUNC4(&ngq->queue)) != NULL) {
		FUNC5(&ngq->queue, el_next);
		if (FUNC3(&ngq->queue))
			FUNC6(&ngq->q_flags, OP_PENDING);
		FUNC2(ngq);

		/* If the item is supplying a callback, call it with an error */
		if (item->apply != NULL) {
			if (item->depth == 1)
				item->apply->error = ENOENT;
			if (FUNC7(&item->apply->refs)) {
				(*item->apply->apply)(item->apply->context,
				    item->apply->error);
			}
		}
		FUNC0(item);
		FUNC1(ngq);
	}
	FUNC2(ngq);
}