#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct via_info {int /*<<< orphan*/  lock; TYPE_1__ rch; TYPE_2__ pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIA_PLAY_STAT ; 
 int /*<<< orphan*/  VIA_RECORD_STAT ; 
 int VIA_RPSTAT_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct via_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(void *p)
{
	struct via_info *via = p;

	/* DEB(printf("viachan_intr\n")); */
	/* Read channel */
	FUNC1(via->lock);
	if (FUNC3(via, VIA_PLAY_STAT, 1) & VIA_RPSTAT_INTR) {
		FUNC4(via, VIA_PLAY_STAT, VIA_RPSTAT_INTR, 1);
		FUNC2(via->lock);
		FUNC0(via->pch.channel);
		FUNC1(via->lock);
	}

	/* Write channel */
	if (FUNC3(via, VIA_RECORD_STAT, 1) & VIA_RPSTAT_INTR) {
		FUNC4(via, VIA_RECORD_STAT, VIA_RPSTAT_INTR, 1);
		FUNC2(via->lock);
		FUNC0(via->rch.channel);
		return;
	}
	FUNC2(via->lock);
}