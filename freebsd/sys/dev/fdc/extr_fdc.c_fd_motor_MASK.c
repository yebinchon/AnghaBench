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
struct fdc_data {int fdout; } ;
struct fd_data {int flags; int fdsu; int /*<<< orphan*/  toffhandle; struct fdc_data* fdc; } ;

/* Variables and functions */
 int FDO_MOEN0 ; 
 int FD_MOTOR ; 
 int FD_MOTORWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fd_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fd_turnon ; 
 int /*<<< orphan*/  FUNC2 (struct fdc_data*,int) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC3(struct fd_data *fd, int turnon)
{
	struct fdc_data *fdc;

	fdc = fd->fdc;
/*
	mtx_assert(&fdc->fdc_mtx, MA_OWNED);
*/
	if (turnon) {
		fd->flags |= FD_MOTORWAIT;
		fdc->fdout |= (FDO_MOEN0 << fd->fdsu);
		FUNC0(&fd->toffhandle, hz, fd_turnon, fd);
	} else {
		FUNC1(&fd->toffhandle);
		fd->flags &= ~(FD_MOTOR|FD_MOTORWAIT);
		fdc->fdout &= ~(FDO_MOEN0 << fd->fdsu);
	}
	FUNC2(fdc, fdc->fdout);
}