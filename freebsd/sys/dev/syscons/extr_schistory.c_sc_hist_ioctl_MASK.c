#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_6__ {int status; TYPE_1__* sc; int /*<<< orphan*/  history; int /*<<< orphan*/  ysize; } ;
typedef  TYPE_2__ scr_stat ;
typedef  scalar_t__ caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/ * scr_map; } ;

/* Variables and functions */
 int BUFFER_SAVED ; 
#define  CONS_CLRHIST 129 
#define  CONS_HISTORY 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOIOCTL ; 
 int SC_NORM_ATTR ; 
 TYPE_2__* FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  extra_history_size ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct tty *tp, u_long cmd, caddr_t data, struct thread *td)
{
	scr_stat *scp;
	int error;

	switch (cmd) {

	case CONS_HISTORY:  	/* set history size */
		scp = FUNC1(tp);
		if (*(int *)data <= 0)
			return EINVAL;
		if (scp->status & BUFFER_SAVED)
			return EBUSY;
		FUNC0(5, ("lines:%d, ysize:%d, pool:%d\n",
			    *(int *)data, scp->ysize, extra_history_size));
		error = FUNC3(scp, 
					       FUNC2(*(int *)data, scp->ysize),
					       scp->ysize, TRUE);
		FUNC0(5, ("error:%d, rows:%d, pool:%d\n", error,
			    FUNC5(scp->history), extra_history_size));
		return error;

	case CONS_CLRHIST:
		scp = FUNC1(tp);
		FUNC4(scp->history, scp->sc->scr_map[0x20],
		    SC_NORM_ATTR << 8);
		return 0;
	}

	return ENOIOCTL;
}