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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advice_push_fetch_first ; 
 int /*<<< orphan*/  advice_push_update_rejected ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  message_advice_ref_fetch_first ; 

__attribute__((used)) static void FUNC2(void)
{
	if (!advice_push_fetch_first || !advice_push_update_rejected)
		return;
	FUNC1(FUNC0(message_advice_ref_fetch_first));
}