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
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtx; TYPE_1__ sel; int /*<<< orphan*/  devq; int /*<<< orphan*/  cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MAKEDEV_ETERNAL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dev_cdevsw ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  devctl_dev ; 
 TYPE_2__ devsoftc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	devctl_dev = FUNC4(MAKEDEV_ETERNAL, &dev_cdevsw, 0, NULL,
	    UID_ROOT, GID_WHEEL, 0600, "devctl");
	FUNC5(&devsoftc.mtx, "dev mtx", "devd", MTX_DEF);
	FUNC1(&devsoftc.cv, "dev cv");
	FUNC0(&devsoftc.devq);
	FUNC3(&devsoftc.sel.si_note, &devsoftc.mtx);
	FUNC2();
}