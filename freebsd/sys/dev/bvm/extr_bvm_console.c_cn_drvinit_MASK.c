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
struct tty {int dummy; } ;
struct TYPE_2__ {scalar_t__ cn_pri; } ;

/* Variables and functions */
 scalar_t__ CN_DEAD ; 
 TYPE_1__ bvm_consdev ; 
 int /*<<< orphan*/  bvm_timer ; 
 int /*<<< orphan*/  bvm_ttydevsw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tty* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(void *unused)
{
	struct tty *tp;

	if (bvm_consdev.cn_pri != CN_DEAD) {
		tp = FUNC1(&bvm_ttydevsw, NULL);
		FUNC0(&bvm_timer, FUNC2(tp), 0);
		FUNC3(tp, NULL, "bvmcons");
	}
}