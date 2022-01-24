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
struct TYPE_2__ {scalar_t__ cn_pri; char* cn_name; } ;

/* Variables and functions */
 scalar_t__ CN_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int polltime ; 
 int /*<<< orphan*/  riscv_callout ; 
 TYPE_1__ riscv_consdev ; 
 int /*<<< orphan*/  riscv_timeout ; 
 int /*<<< orphan*/  riscv_ttydevsw ; 
 int /*<<< orphan*/  tp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC5(void *unused)
{

	if (riscv_consdev.cn_pri != CN_DEAD &&
	    riscv_consdev.cn_name[0] != '\0') {
		tp = FUNC2(&riscv_ttydevsw, NULL);
		FUNC3(tp, 0);
		FUNC4(tp, NULL, "%s", "rcons");

		polltime = 1;

		FUNC0(&riscv_callout, 1);
		FUNC1(&riscv_callout, polltime, riscv_timeout, NULL);
	}
}