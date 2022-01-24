#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * epoch_t ;
typedef  TYPE_1__* epoch_record_t ;
struct TYPE_3__ {int /*<<< orphan*/  er_record; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(epoch_t epoch)
{
	epoch_record_t er;

	FUNC1(cold || epoch != NULL);
	FUNC0(epoch);
	FUNC3();
	er = FUNC4(epoch);
	FUNC2(&er->er_record, NULL);
}