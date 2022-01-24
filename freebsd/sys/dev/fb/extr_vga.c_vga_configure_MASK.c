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
struct TYPE_5__ {int /*<<< orphan*/  va_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  V_ADP_INITIALIZED ; 
 int /*<<< orphan*/  V_ADP_REGISTERED ; 
 TYPE_1__* biosadapter ; 
 int biosadapters ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(int flags)
{
    int i;

    FUNC1();
    for (i = 0; i < biosadapters; ++i) {
	if (!FUNC2(&biosadapter[i]))
	    continue;
	biosadapter[i].va_flags |= V_ADP_INITIALIZED;
	if (!FUNC0(&biosadapter[i])) {
	    if (FUNC5(&biosadapter[i]) < 0)
		continue;
	    biosadapter[i].va_flags |= V_ADP_REGISTERED;
	}
    }
    if (&vga_sub_configure != NULL)
	FUNC4)(flags);

    return biosadapters;
}