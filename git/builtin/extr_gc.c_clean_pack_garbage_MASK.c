#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nr; TYPE_1__* items; } ;
struct TYPE_4__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 TYPE_2__ pack_garbage ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;
	for (i = 0; i < pack_garbage.nr; i++)
		FUNC1(pack_garbage.items[i].string);
	FUNC0(&pack_garbage, 0);
}