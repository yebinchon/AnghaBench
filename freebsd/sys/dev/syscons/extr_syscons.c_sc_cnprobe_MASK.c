#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct consdev {void* cn_pri; int /*<<< orphan*/  cn_name; } ;

/* Variables and functions */
 void* CN_DEAD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VTY_SC ; 
 void* FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct consdev *cp)
{
    int unit;
    int flags;

    if (!FUNC4(VTY_SC)) {
	cp->cn_pri = CN_DEAD;
	return;
    }

    cp->cn_pri = FUNC0(&unit, &flags);

    /* a video card is always required */
    if (!FUNC2(unit, flags, TRUE))
	cp->cn_pri = CN_DEAD;

    /* syscons will become console even when there is no keyboard */
    FUNC1(unit, flags, TRUE);

    if (cp->cn_pri == CN_DEAD)
	return;

    /* initialize required fields */
    FUNC3(cp->cn_name, "ttyv0");
}