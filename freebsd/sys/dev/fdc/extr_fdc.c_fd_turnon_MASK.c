#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fd_data {TYPE_1__* fdc; int /*<<< orphan*/  fd_bq; int /*<<< orphan*/  flags; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  head; int /*<<< orphan*/  fdc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD_MOTOR ; 
 int /*<<< orphan*/  FD_MOTORWAIT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct fd_data *fd;
	struct bio *bp;
	int once;

	fd = arg;
	FUNC2(&fd->fdc->fdc_mtx, MA_OWNED);
	fd->flags &= ~FD_MOTORWAIT;
	fd->flags |= FD_MOTOR;
	once = 0;
	for (;;) {
		bp = FUNC1(&fd->fd_bq);
		if (bp == NULL)
			break;
		FUNC0(&fd->fdc->head, bp);
		once = 1;
	}
	if (once)
		FUNC3(&fd->fdc->head);
}