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
struct TYPE_3__ {int /*<<< orphan*/ * cam_path; int /*<<< orphan*/  cam_mtx; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(isc_session_t *sp, int target)
{
     FUNC0(8);
     FUNC3(2, "lost target=%d", target);

     if(sp->cam_path != NULL) {
	  FUNC1(&sp->cam_mtx);
	  FUNC4(AC_LOST_DEVICE, sp->cam_path, NULL);
	  FUNC5(sp->cam_path);
	  FUNC2(&sp->cam_mtx);
	  sp->cam_path = 0; // XXX
     }
}