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
struct llentry {int /*<<< orphan*/  lle_epoch_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6_lltable_destroy_lle_unlocked ; 
 int /*<<< orphan*/  net_epoch_preempt ; 

__attribute__((used)) static void
FUNC2(struct llentry *lle)
{

	FUNC0(lle);
	FUNC1(net_epoch_preempt,  &lle->lle_epoch_ctx, in6_lltable_destroy_lle_unlocked);
}