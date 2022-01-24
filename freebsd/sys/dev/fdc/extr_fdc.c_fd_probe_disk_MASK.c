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
struct fdc_data {int /*<<< orphan*/  fdc_mtx; } ;
struct fd_data {int options; int fdsu; int /*<<< orphan*/  flags; struct fdc_data* fdc; } ;

/* Variables and functions */
 int FDI_DCHG ; 
 int FDOPT_NOERRLOG ; 
 int FDOPT_NORETRY ; 
 int /*<<< orphan*/  FD_EMPTY ; 
 int /*<<< orphan*/  FD_NEWDISK ; 
 scalar_t__ FD_NOT_VALID ; 
 int /*<<< orphan*/  FD_WP ; 
 int /*<<< orphan*/  NE7CMD_RECAL ; 
 int /*<<< orphan*/  NE7CMD_SEEK ; 
 int NE7_ST3_WP ; 
 int /*<<< orphan*/  PRIBIO ; 
 int debugflags ; 
 scalar_t__ FUNC0 (struct fdc_data*,int,int /*<<< orphan*/ ,int,int,...) ; 
 scalar_t__ FUNC1 (struct fdc_data*,int*) ; 
 scalar_t__ FUNC2 (struct fdc_data*,int*,int*) ; 
 int FUNC3 (struct fdc_data*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct fdc_data*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct fd_data *fd, int *recal)
{
	struct fdc_data *fdc;
	int st0, st3, cyl;
	int oopts, ret;

	fdc = fd->fdc;
	oopts = fd->options;
	fd->options |= FDOPT_NOERRLOG | FDOPT_NORETRY;
	ret = 1;

	/*
	 * First recal, then seek to cyl#1, this clears the old condition on
	 * the disk change line so we can examine it for current status.
	 */
	if (debugflags & 0x40)
		FUNC6("New disk in probe\n");
	FUNC4(&fdc->fdc_mtx);
	fd->flags |= FD_NEWDISK;
	FUNC5(&fdc->fdc_mtx);
	if (FUNC0(fdc, 2, NE7CMD_RECAL, fd->fdsu, 0))
		goto done;
	FUNC7(fdc, PRIBIO, "fdrecal", hz);
	if (FUNC2(fdc, &st0, &cyl) == FD_NOT_VALID)
		goto done;	/* XXX */
	if ((st0 & 0xc0) || cyl != 0)
		goto done;

	/* Seek to track 1 */
	if (FUNC0(fdc, 3, NE7CMD_SEEK, fd->fdsu, 1, 0))
		goto done;
	FUNC7(fdc, PRIBIO, "fdseek", hz);
	if (FUNC2(fdc, &st0, &cyl) == FD_NOT_VALID)
		goto done;	/* XXX */
	*recal |= (1 << fd->fdsu);
	if (FUNC3(fdc) & FDI_DCHG) {
		if (debugflags & 0x40)
			FUNC6("Empty in probe\n");
		FUNC4(&fdc->fdc_mtx);
		fd->flags |= FD_EMPTY;
		FUNC5(&fdc->fdc_mtx);
	} else {
		if (FUNC1(fdc, &st3) != 0)
			goto done;
		if (debugflags & 0x40)
			FUNC6("Got disk in probe\n");
		FUNC4(&fdc->fdc_mtx);
		fd->flags &= ~FD_EMPTY;
		if (st3 & NE7_ST3_WP)
			fd->flags |= FD_WP;
		else
			fd->flags &= ~FD_WP;
		FUNC5(&fdc->fdc_mtx);
	}
	ret = 0;

done:
	fd->options = oopts;
	return (ret);
}