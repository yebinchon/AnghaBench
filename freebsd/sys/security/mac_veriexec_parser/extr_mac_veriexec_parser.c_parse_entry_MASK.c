#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vattr {int va_mode; int /*<<< orphan*/  va_gen; int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_fsid; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FREAD ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int VEXEC ; 
 int FUNC1 (int /*<<< orphan*/ ,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 
 int FUNC3 (char*,char**,unsigned char**,int*) ; 
 int FUNC4 (unsigned char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,struct nameidata*) ; 
 int FUNC9 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*,int) ; 
 int /*<<< orphan*/  ve_mutex ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC13(char *entry, char *prefix)
{
	struct nameidata	nid;
	struct vattr		va;
	char			path[MAXPATHLEN];
	char			*fp_type;
	unsigned char		*digest;
	int			rc, is_exec, flags;

	fp_type = NULL;
	digest = NULL;
	flags = 0;

	rc = FUNC3(entry, &fp_type, &digest, &flags);
	if (rc != 0)
		return (rc);

	rc = FUNC4(digest);
	if (rc != 0)
		return (rc);

	if (FUNC11(entry, MAXPATHLEN) == MAXPATHLEN)
		return (EINVAL);

	/* If the path is not absolute prepend it with a prefix */
	if (prefix != NULL && entry[0] != '/') {
		rc = FUNC9(path, MAXPATHLEN, "%s/%s",
			    prefix, entry);
		if (rc < 0)
			return (-rc);
	} else {
		FUNC10(path, entry);
	}

	rc = FUNC8(path, &nid);
	FUNC0(&nid, NDF_ONLY_PNBUF);
	if (rc != 0)
		return (rc);

	rc = FUNC1(nid.ni_vp, &va, curthread->td_ucred);
	if (rc != 0)
		goto out;

	is_exec = (va.va_mode & VEXEC);

	FUNC6(&ve_mutex);
	rc = FUNC5(
	    is_exec == 0,
	    va.va_fsid, va.va_fileid, va.va_gen,
	    digest,
	    NULL, 0,
	    flags, fp_type, 1);
	FUNC7(&ve_mutex);

out:
	FUNC2(nid.ni_vp, 0);
	FUNC12(nid.ni_vp, FREAD, curthread->td_ucred, curthread);
	return (rc);
}