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
struct taskqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskqueue*) ; 
 int FUNC2 (struct taskqueue*) ; 
 int FUNC3 (struct taskqueue*) ; 

void
FUNC4(struct taskqueue *queue)
{
	int ret;

	FUNC0(queue);
	do {
		ret = FUNC3(queue);
		if (ret == 0)
			ret = FUNC2(queue);
	} while (ret != 0);
	FUNC1(queue);
}