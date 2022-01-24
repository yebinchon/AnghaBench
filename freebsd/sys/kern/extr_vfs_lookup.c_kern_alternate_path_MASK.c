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
struct thread {int dummy; } ;
struct nameidata {scalar_t__ ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AT_FDCWD ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,struct thread*) ; 
 int /*<<< orphan*/  NOFOLLOW ; 
 int UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int FUNC3 (char const*,char*,size_t,size_t*) ; 
 int FUNC4 (char const*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nameidata*) ; 
 size_t FUNC8 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

int
FUNC10(struct thread *td, const char *prefix, const char *path,
    enum uio_seg pathseg, char **pathbuf, int create, int dirfd)
{
	struct nameidata nd, ndroot;
	char *ptr, *buf, *cp;
	size_t len, sz;
	int error;

	buf = (char *) FUNC6(MAXPATHLEN, M_TEMP, M_WAITOK);
	*pathbuf = buf;

	/* Copy the prefix into the new pathname as a starting point. */
	len = FUNC8(buf, prefix, MAXPATHLEN);
	if (len >= MAXPATHLEN) {
		*pathbuf = NULL;
		FUNC5(buf, M_TEMP);
		return (EINVAL);
	}
	sz = MAXPATHLEN - len;
	ptr = buf + len;

	/* Append the filename to the prefix. */
	if (pathseg == UIO_SYSSPACE)
		error = FUNC4(path, ptr, sz, &len);
	else
		error = FUNC3(path, ptr, sz, &len);

	if (error) {
		*pathbuf = NULL;
		FUNC5(buf, M_TEMP);
		return (error);
	}

	/* Only use a prefix with absolute pathnames. */
	if (*ptr != '/') {
		error = EINVAL;
		goto keeporig;
	}

	if (dirfd != AT_FDCWD) {
		/*
		 * We want the original because the "prefix" is
		 * included in the already opened dirfd.
		 */
		FUNC2(ptr, buf, len);
		return (0);
	}

	/*
	 * We know that there is a / somewhere in this pathname.
	 * Search backwards for it, to find the file's parent dir
	 * to see if it exists in the alternate tree. If it does,
	 * and we want to create a file (cflag is set). We don't
	 * need to worry about the root comparison in this case.
	 */

	if (create) {
		for (cp = &ptr[len] - 1; *cp != '/'; cp--);
		*cp = '\0';

		FUNC1(&nd, LOOKUP, NOFOLLOW, UIO_SYSSPACE, buf, td);
		error = FUNC7(&nd);
		*cp = '/';
		if (error != 0)
			goto keeporig;
	} else {
		FUNC1(&nd, LOOKUP, NOFOLLOW, UIO_SYSSPACE, buf, td);

		error = FUNC7(&nd);
		if (error != 0)
			goto keeporig;

		/*
		 * We now compare the vnode of the prefix to the one
		 * vnode asked. If they resolve to be the same, then we
		 * ignore the match so that the real root gets used.
		 * This avoids the problem of traversing "../.." to find the
		 * root directory and never finding it, because "/" resolves
		 * to the emulation root directory. This is expensive :-(
		 */
		FUNC1(&ndroot, LOOKUP, FOLLOW, UIO_SYSSPACE, prefix,
		    td);

		/* We shouldn't ever get an error from this namei(). */
		error = FUNC7(&ndroot);
		if (error == 0) {
			if (nd.ni_vp == ndroot.ni_vp)
				error = ENOENT;

			FUNC0(&ndroot, NDF_ONLY_PNBUF);
			FUNC9(ndroot.ni_vp);
		}
	}

	FUNC0(&nd, NDF_ONLY_PNBUF);
	FUNC9(nd.ni_vp);

keeporig:
	/* If there was an error, use the original path name. */
	if (error)
		FUNC2(ptr, buf, len);
	return (error);
}