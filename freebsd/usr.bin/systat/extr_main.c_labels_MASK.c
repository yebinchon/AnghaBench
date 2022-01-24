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
struct TYPE_2__ {int c_flags; int /*<<< orphan*/  (* c_label ) () ;} ;

/* Variables and functions */
 int CF_LOADAV ; 
 int CF_ZFSARC ; 
 TYPE_1__* curcmd ; 
 int /*<<< orphan*/  hostname ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{
	if (curcmd->c_flags & CF_LOADAV) {
		FUNC0(0, 20,
		    "/0   /1   /2   /3   /4   /5   /6   /7   /8   /9   /10");
		FUNC0(1, 5, "Load Average");
	}
	if (curcmd->c_flags & CF_ZFSARC) {
		FUNC0(0, 20,
		    "   Total     MFU     MRU    Anon     Hdr   L2Hdr   Other");
		FUNC0(1, 5, "ZFS ARC     ");
	}
	(*curcmd->c_label)();
#ifdef notdef
	mvprintw(21, 25, "CPU usage on %s", hostname);
#endif
	FUNC2();
}