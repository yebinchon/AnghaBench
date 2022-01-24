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
typedef  int /*<<< orphan*/  ocs_lock_t ;
typedef  int /*<<< orphan*/  ocs_list_t ;
typedef  int /*<<< orphan*/  ocs_hw_sequence_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ocs_hw_sequence_t *
FUNC3(ocs_list_t *pend_list, ocs_lock_t *list_lock)
{
	ocs_hw_sequence_t *frame = NULL;

	FUNC1(list_lock);
		frame = FUNC0(pend_list);
	FUNC2(list_lock);
	return frame;
}