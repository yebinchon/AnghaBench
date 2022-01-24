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
struct mlxd_foreach_action {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* func ) (int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_NEXT_CHILD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void
FUNC6(int unit, void *arg)
{
    struct mlxd_foreach_action	*ma = (struct mlxd_foreach_action *)arg;
    int				i, fd, ctrlfd;
    
    /* Get the device */
    if ((ctrlfd = FUNC4(FUNC1(unit), 0)) < 0)
	return;
    
    for (i = -1; ;) {
	/* Get the unit number of the next child device */
	if (FUNC3(ctrlfd, MLX_NEXT_CHILD, &i) < 0) {
	    FUNC0(ctrlfd);
	    return;
	}
	
	/* check that we can open this unit */
	if ((fd = FUNC4(FUNC2(i), 0)) >= 0)
	    FUNC0(fd);
	/* if we can, do */
	if (fd >= 0) {
	    ma->func(i, ma->arg);
	}
    }
}