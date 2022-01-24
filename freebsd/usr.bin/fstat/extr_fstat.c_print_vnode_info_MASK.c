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
typedef  char const* uintmax_t ;
struct vnstat {scalar_t__ vn_type; char const* vn_mntdir; int vn_mode; char const* vn_devname; scalar_t__ vn_size; scalar_t__ vn_dev; scalar_t__ vn_fileid; scalar_t__ vn_fsid; } ;
struct procstat {int dummy; } ;
struct filestat {int /*<<< orphan*/  fs_fflags; } ;
typedef  int /*<<< orphan*/  mode ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 scalar_t__ PS_FST_VTYPE_VBAD ; 
 scalar_t__ PS_FST_VTYPE_VBLK ; 
 scalar_t__ PS_FST_VTYPE_VCHR ; 
 scalar_t__ PS_FST_VTYPE_VNON ; 
 int _POSIX2_LINE_MAX ; 
 scalar_t__ nflg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int FUNC2 (struct procstat*,struct filestat*,struct vnstat*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void
FUNC5(struct procstat *procstat, struct filestat *fst)
{
	struct vnstat vn;
	char errbuf[_POSIX2_LINE_MAX];
	char mode[15];
	const char *badtype;
	int error;

	badtype = NULL;
	error = FUNC2(procstat, fst, &vn, errbuf);
	if (error != 0)
		badtype = errbuf;
	else if (vn.vn_type == PS_FST_VTYPE_VBAD)
		badtype = "bad";
	else if (vn.vn_type == PS_FST_VTYPE_VNON)
		badtype = "none";
	if (badtype != NULL) {
		FUNC1(" -         -  %10s    -", badtype);
		return;
	}

	if (nflg)
		FUNC1(" %#5jx", (uintmax_t)vn.vn_fsid);
	else if (vn.vn_mntdir != NULL)
		(void)FUNC1(" %-8s", vn.vn_mntdir);

	/*
	 * Print access mode.
	 */
	if (nflg)
		(void)FUNC3(mode, sizeof(mode), "%o", vn.vn_mode);
	else {
		FUNC4(vn.vn_mode, mode);
	}
	(void)FUNC1(" %6jd %10s", (intmax_t)vn.vn_fileid, mode);

	if (vn.vn_type == PS_FST_VTYPE_VBLK || vn.vn_type == PS_FST_VTYPE_VCHR) {
		if (nflg || !*vn.vn_devname)
			FUNC1(" %#6jx", (uintmax_t)vn.vn_dev);
		else {
			FUNC1(" %6s", vn.vn_devname);
		}
	} else
		FUNC1(" %6ju", (uintmax_t)vn.vn_size);
	FUNC0(fst->fs_fflags);
}