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
struct TYPE_5__ {scalar_t__ va_window; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 scalar_t__ CURVE ; 
 int /*<<< orphan*/  VIDEO_MODE ; 
 scalar_t__ blanked ; 
 scalar_t__ curve ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * vid ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(video_adapter_t *adp, int blank)
{
	int pl;

	if (blank) {
		/* switch to graphics mode */
		if (blanked <= 0) {
			pl = FUNC1();
			FUNC3(adp, VIDEO_MODE);
			vid = (u_char *)adp->va_window;
			curve = CURVE + 1;
			++blanked;
			FUNC2(pl);
		}

		/* update display */
		FUNC0(adp);
	}
	else {
		blanked = 0;
	}
	return 0;
}