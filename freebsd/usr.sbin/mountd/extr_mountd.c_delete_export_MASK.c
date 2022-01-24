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
struct xvfsconf {int vfc_flags; } ;
struct statfs {int f_flags; int /*<<< orphan*/  f_mntonname; int /*<<< orphan*/  f_mntfromname; int /*<<< orphan*/  f_fstypename; } ;
struct iovec {void* iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTSUP ; 
 scalar_t__ EXDEV ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MNT_EXPORTED ; 
 int VFCF_NETWORK ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct xvfsconf*) ; 
 scalar_t__ FUNC1 (struct iovec*,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC4(struct iovec *iov, int iovlen, struct statfs *fsp, char *errmsg)
{
	struct xvfsconf vfc;

	if (FUNC0(fsp->f_fstypename, &vfc) != 0) {
		FUNC3(LOG_ERR, "getvfsbyname() failed for %s",
		    fsp->f_fstypename);
		return;
	}
	
	/*
	 * We do not need to delete "export" flag from
	 * filesystems that do not have it set.
	 */
	if (!(fsp->f_flags & MNT_EXPORTED))
		return;
	/*
	 * Do not delete export for network filesystem by
	 * passing "export" arg to nmount().
	 * It only makes sense to do this for local filesystems.
	 */
	if (vfc.vfc_flags & VFCF_NETWORK)
		return;
	
	iov[1].iov_base = fsp->f_fstypename;
	iov[1].iov_len = FUNC2(fsp->f_fstypename) + 1;
	iov[3].iov_base = fsp->f_mntonname;
	iov[3].iov_len = FUNC2(fsp->f_mntonname) + 1;
	iov[5].iov_base = fsp->f_mntfromname;
	iov[5].iov_len = FUNC2(fsp->f_mntfromname) + 1;
	errmsg[0] = '\0';
	
	/*
	 * EXDEV is returned when path exists but is not a
	 * mount point.  May happens if raced with unmount.
	 */
	if (FUNC1(iov, iovlen, fsp->f_flags) < 0 && errno != ENOENT &&
	    errno != ENOTSUP && errno != EXDEV) {
		FUNC3(LOG_ERR,
		    "can't delete exports for %s: %m %s",
		    fsp->f_mntonname, errmsg);
	}
}