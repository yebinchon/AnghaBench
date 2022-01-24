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

/* Variables and functions */
 int /*<<< orphan*/  MLX_RESCAN_DRIVES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int unit, void *junk)
{
    int		fd;
    
    /* Get the device */
    if ((fd = FUNC4(FUNC2(unit), 0)) < 0) {
	FUNC5("can't open %s", FUNC2(unit));
	return;
    }

    if (FUNC3(fd, MLX_RESCAN_DRIVES) < 0)
	FUNC5("can't rescan %s", FUNC1(unit));
    FUNC0(fd);
}