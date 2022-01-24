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
struct fdc_data {int /*<<< orphan*/  fdc_mtx; int /*<<< orphan*/  head; } ;
struct fd_data {int flags; int /*<<< orphan*/  fd_bq; int /*<<< orphan*/  toffhandle; int /*<<< orphan*/  fd_iocount; struct fdc_data* fdc; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int FD_MOTOR ; 
 int FD_MOTORWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fd_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct fd_data *fd, struct bio *bp)
{
	struct fdc_data *fdc;
	int call;

	call = 0;
	fdc = fd->fdc;
	FUNC4(&fdc->fdc_mtx);
	/* If we go from idle, cancel motor turnoff */
	if (fd->fd_iocount++ == 0)
		FUNC2(&fd->toffhandle);
	if (fd->flags & FD_MOTOR) {
		/* The motor is on, send it directly to the controller */
		FUNC0(&fdc->head, bp);
		FUNC6(&fdc->head);
	} else {
		/* Queue it on the drive until the motor has started */
		FUNC1(&fd->fd_bq, bp);
		if (!(fd->flags & FD_MOTORWAIT))
			FUNC3(fd, 1);
	}
	FUNC5(&fdc->fdc_mtx);
}