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
struct cfjails {int dummy; } ;
struct cfjail {struct cfjails* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfjails*,struct cfjail*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfjails*,struct cfjail*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tq ; 

void
FUNC2(struct cfjail *j, struct cfjails *queue)
{
	if (j->queue != queue) {
		FUNC1(j->queue, j, tq);
		FUNC0(queue, j, tq);
		j->queue = queue;
	}
}