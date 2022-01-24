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
typedef  int u_int ;
struct fdc_data {int /*<<< orphan*/  fdc_mtx; struct fd_data* fd; } ;
struct fd_data {int fdsu; int type; struct fdc_data* fdc; int /*<<< orphan*/  toffhandle; scalar_t__ options; int /*<<< orphan*/  track; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
#define  FDT_12M 132 
#define  FDT_144M 131 
#define  FDT_288M 130 
 int FDT_288M_1 ; 
#define  FDT_360K 129 
#define  FDT_720K 128 
 int FDT_NONE ; 
 int /*<<< orphan*/  FD_EMPTY ; 
 int FD_NO_PROBE ; 
 int /*<<< orphan*/  FD_NO_TRACK ; 
 int FD_TYPEMASK ; 
 int /*<<< orphan*/  NE7CMD_RECAL ; 
 int /*<<< orphan*/  NE7CMD_SEEK ; 
 int NE7_ST0_EC ; 
 int NE7_ST3_T0 ; 
 int /*<<< orphan*/  RTC_FDISKETTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct fd_data*,int) ; 
 int /*<<< orphan*/ * fd_native_types ; 
 int /*<<< orphan*/  FUNC8 (struct fd_data*) ; 
 scalar_t__ FUNC9 (struct fdc_data*,int,int /*<<< orphan*/ ,int,int,...) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fdc_data*) ; 
 scalar_t__ FUNC13 (struct fdc_data*,int*) ; 
 scalar_t__ FUNC14 (struct fdc_data*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct fd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	int	unit;
	int	i;
	u_int	st0, st3;
	struct	fd_data *fd;
	struct	fdc_data *fdc;
	int	fdsu;
	int	flags, type;

	fdsu = FUNC11(dev);
	fd = FUNC4(dev);
	fdc = FUNC4(FUNC3(dev));
	flags = FUNC2(dev);

	fd->dev = dev;
	fd->fdc = fdc;
	fd->fdsu = fdsu;
	unit = FUNC5(dev);

	/* Auto-probe if fdinfo is present, but always allow override. */
	type = flags & FD_TYPEMASK;
	if (type == FDT_NONE && (type = FUNC10(dev)) != FDT_NONE) {
		fd->type = type;
		goto done;
	} else {
		/* make sure fdautoselect() will be called */
		fd->flags = FD_EMPTY;
		fd->type = type;
	}

#if defined(__i386__) || defined(__amd64__)
	if (fd->type == FDT_NONE && (unit == 0 || unit == 1)) {
		/* Look up what the BIOS thinks we have. */
		if (unit == 0)
			fd->type = (FUNC18(RTC_FDISKETTE) & 0xf0) >> 4;
		else
			fd->type = FUNC18(RTC_FDISKETTE) & 0x0f;
		if (fd->type == FDT_288M_1)
			fd->type = FDT_288M;
	}
#endif /* __i386__ || __amd64__ */
	/* is there a unit? */
	if (fd->type == FDT_NONE)
		return (ENXIO);

	FUNC16(&fdc->fdc_mtx);

	/* select it */
	FUNC8(fd);
	FUNC7(fd, 1);
	fdc->fd = fd;
	FUNC12(fdc);		/* XXX reset, then unreset, etc. */
	FUNC0(1000000);	/* 1 sec */

	if ((flags & FD_NO_PROBE) == 0) {
		/* If we're at track 0 first seek inwards. */
		if ((FUNC13(fdc, &st3) == 0) &&
		    (st3 & NE7_ST3_T0)) {
			/* Seek some steps... */
			if (FUNC9(fdc, 3, NE7CMD_SEEK, fdsu, 10, 0) == 0) {
				/* ...wait a moment... */
				FUNC0(300000);
				/* make ctrlr happy: */
				FUNC14(fdc, NULL, NULL);
			}
		}

		for (i = 0; i < 2; i++) {
			/*
			 * we must recalibrate twice, just in case the
			 * heads have been beyond cylinder 76, since
			 * most FDCs still barf when attempting to
			 * recalibrate more than 77 steps
			 */
			/* go back to 0: */
			if (FUNC9(fdc, 2, NE7CMD_RECAL, fdsu, 0) == 0) {
				/* a second being enough for full stroke seek*/
				FUNC0(i == 0 ? 1000000 : 300000);

				/* anything responding? */
				if (FUNC14(fdc, &st0, NULL) == 0 &&
				    (st0 & NE7_ST0_EC) == 0)
					break; /* already probed successfully */
			}
		}
	}

	FUNC7(fd, 0);
	fdc->fd = NULL;
	FUNC17(&fdc->fdc_mtx);

	if ((flags & FD_NO_PROBE) == 0 &&
	    (st0 & NE7_ST0_EC) != 0) /* no track 0 -> no drive present */
		return (ENXIO);

done:

	switch (fd->type) {
	case FDT_12M:
		FUNC6(dev, "1200-KB 5.25\" drive");
		break;
	case FDT_144M:
		FUNC6(dev, "1440-KB 3.5\" drive");
		break;
	case FDT_288M:
		FUNC6(dev, "2880-KB 3.5\" drive (in 1440-KB mode)");
		break;
	case FDT_360K:
		FUNC6(dev, "360-KB 5.25\" drive");
		break;
	case FDT_720K:
		FUNC6(dev, "720-KB 3.5\" drive");
		break;
	default:
		return (ENXIO);
	}
	fd->track = FD_NO_TRACK;
	fd->fdc = fdc;
	fd->fdsu = fdsu;
	fd->options = 0;
	FUNC1(&fd->toffhandle, &fd->fdc->fdc_mtx, 0);

	/* initialize densities for subdevices */
	FUNC15(fd, fd_native_types[fd->type]);
	return (0);
}