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
struct TYPE_2__ {int /*<<< orphan*/  enl_head; } ;

/* Variables and functions */
 int EVNAMEMAP_HASH_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* evnamemap_hash ; 

void
FUNC3(void)
{
	int i;

	FUNC0();
	for (i = 0; i < EVNAMEMAP_HASH_TABLE_SIZE; i++)
		FUNC1(&evnamemap_hash[i].enl_head);
	FUNC2();
}