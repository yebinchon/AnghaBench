#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct qentry* dat; } ;
struct qentry {TYPE_1__ data; } ;

/* Variables and functions */
 struct qentry* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct qentry*) ; 

void
FUNC2(void)
{
	struct qentry *item;

	while ((item = FUNC0()) != NULL) {
		FUNC1(item->data.dat);
		FUNC1(item);
	}
}