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
struct TYPE_4__ {TYPE_1__ sc_selp; int /*<<< orphan*/  sc_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MAKEDEV_ETERNAL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  log_cdevsw ; 
 int /*<<< orphan*/  log_wakeup ; 
 TYPE_2__ logsoftc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  msgbuf_lock ; 

__attribute__((used)) static void
FUNC4(void *unused)
{

	FUNC1(&log_wakeup, "klog");
	FUNC0(&logsoftc.sc_callout, &msgbuf_lock, 0);
	FUNC2(&logsoftc.sc_selp.si_note, &msgbuf_lock);
	FUNC3(MAKEDEV_ETERNAL, &log_cdevsw, 0, NULL, UID_ROOT,
	    GID_WHEEL, 0600, "klog");
}