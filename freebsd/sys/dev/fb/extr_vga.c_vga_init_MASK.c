#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  va_flags; } ;
typedef  TYPE_1__ video_adapter_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  V_ADP_INITIALIZED ; 
 int /*<<< orphan*/  V_ADP_REGISTERED ; 
 int biosadapters ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(int unit, video_adapter_t *adp, int flags)
{
    if ((unit >= biosadapters) || (adp == NULL) || !FUNC2(adp))
	return ENXIO;

    if (!FUNC1(adp)) {
	/* nothing to do really... */
	adp->va_flags |= V_ADP_INITIALIZED;
    }

    if (!FUNC0(adp)) {
	if (FUNC5(adp) < 0)
		return ENXIO;
	adp->va_flags |= V_ADP_REGISTERED;
    }
    if (&vga_sub_configure != NULL)
	FUNC4)(0);

    return 0;
}