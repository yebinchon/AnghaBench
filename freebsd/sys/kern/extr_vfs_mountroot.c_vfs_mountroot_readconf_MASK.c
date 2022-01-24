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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct sbuf {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FOLLOW ; 
 int FREAD ; 
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC5 (struct nameidata*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct thread*) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, struct sbuf *sb)
{
	static char buf[128];
	struct nameidata nd;
	off_t ofs;
	ssize_t resid;
	int error, flags, len;

	FUNC1(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE, "/.mount.conf", td);
	flags = FREAD;
	error = FUNC5(&nd, &flags, 0, NULL);
	if (error)
		return (error);

	FUNC0(&nd, NDF_ONLY_PNBUF);
	ofs = 0;
	len = sizeof(buf) - 1;
	while (1) {
		error = FUNC6(UIO_READ, nd.ni_vp, buf, len, ofs,
		    UIO_SYSSPACE, IO_NODELOCKED, td->td_ucred,
		    NOCRED, &resid, td);
		if (error)
			break;
		if (resid == len)
			break;
		buf[len - resid] = 0;
		FUNC3(sb, "%s", buf);
		ofs += len - resid;
	}

	FUNC2(nd.ni_vp, 0);
	FUNC4(nd.ni_vp, FREAD, td->td_ucred, td);
	return (error);
}