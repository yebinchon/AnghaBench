#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* epoch_t ;
struct TYPE_4__ {scalar_t__ e_flags; int /*<<< orphan*/  e_epoch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  epoch_block_handler ; 

void
FUNC5(epoch_t epoch)
{

	FUNC1(cold || epoch != NULL);
	FUNC0(epoch);
	FUNC1(epoch->e_flags == 0);
	FUNC3();
	FUNC2(&epoch->e_epoch, epoch_block_handler, NULL);
	FUNC4();
}