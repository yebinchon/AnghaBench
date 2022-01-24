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
struct statfs {int /*<<< orphan*/  f_mntfromname; } ;
struct stat {int st_flags; int st_size; int /*<<< orphan*/  st_mode; } ;
struct mkuz_cfg {int fdr; int /*<<< orphan*/  iname; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int SF_SNAPSHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (int,struct statfs*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

off_t
FUNC9(struct mkuz_cfg *cfp)
{
	int ffd;
	off_t ms;
	struct stat sb;
	struct statfs statfsbuf;

	if (FUNC3(cfp->fdr, &sb) != 0) {
		FUNC7("fstat(%s)", cfp->iname);
		return (-1);
	}
	if ((sb.st_flags & SF_SNAPSHOT) != 0) {
		if (FUNC4(cfp->fdr, &statfsbuf) != 0) {
			FUNC7("fstatfs(%s)", cfp->iname);
			return (-1);
		}
		ffd = FUNC6(statfsbuf.f_mntfromname, O_RDONLY);
		if (ffd < 0) {
			FUNC7("open(%s, O_RDONLY)", statfsbuf.f_mntfromname);
			return (-1);
		}
		if (FUNC5(ffd, DIOCGMEDIASIZE, &ms) < 0) {
			FUNC7("ioctl(DIOCGMEDIASIZE)");
			FUNC2(ffd);
			return (-1);
		}
		FUNC2(ffd);
		sb.st_size = ms;
	} else if (FUNC0(sb.st_mode)) {
		if (FUNC5(cfp->fdr, DIOCGMEDIASIZE, &ms) < 0) {
			FUNC7("ioctl(DIOCGMEDIASIZE)");
			return (-1);
		}
		sb.st_size = ms;
	} else if (!FUNC1(sb.st_mode)) {
		FUNC8("%s: not a character device or regular file\n",
			cfp->iname);
		return (-1);
	}
	return (sb.st_size);
}