#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cam_sim; int /*<<< orphan*/ * cam_path; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XPT_RESET_BUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(isc_session_t *sp )
{
     FUNC6(8);

     if(sp->cam_path != NULL) {
	  FUNC7(2, "name=%s unit=%d",
		 FUNC3(sp->cam_sim), FUNC5(sp->cam_sim));
	  FUNC0(sp);
#if 0
	  xpt_async(AC_LOST_DEVICE, sp->cam_path, NULL);
#else
	  FUNC8(XPT_RESET_BUS, sp->cam_path, NULL);
#endif
	  FUNC10(sp->cam_path);
	  FUNC9(FUNC4(sp->cam_sim));
	  FUNC2(sp->cam_sim, TRUE /*free_devq*/);

	  FUNC1(sp);
	  FUNC7(2, "done");
     }
}