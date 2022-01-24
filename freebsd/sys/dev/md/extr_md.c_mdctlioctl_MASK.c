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
typedef  int u_long ;
struct thread {int dummy; } ;
struct md_req {void* md_label; void* md_file_seg; void* md_file; } ;
struct md_ioctl32 {void* md_label; void* md_file; int /*<<< orphan*/  md_version; } ;
struct md_ioctl {void* md_label; void* md_file; int /*<<< orphan*/  md_version; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  mdr ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOIOCTL ; 
#define  MDIOCATTACH 135 
#define  MDIOCATTACH_32 134 
#define  MDIOCDETACH 133 
#define  MDIOCDETACH_32 132 
#define  MDIOCQUERY 131 
#define  MDIOCQUERY_32 130 
#define  MDIOCRESIZE 129 
#define  MDIOCRESIZE_32 128 
 int /*<<< orphan*/  MDIOVERSION ; 
 int /*<<< orphan*/  FUNC0 (struct md_ioctl32*,struct md_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct md_req*,struct md_ioctl32*) ; 
 void* UIO_SYSSPACE ; 
 void* UIO_USERSPACE ; 
 int /*<<< orphan*/  FUNC2 (struct md_req*,int) ; 
 char* FUNC3 (struct cdev*) ; 
 int FUNC4 (struct thread*,struct md_req*) ; 
 int FUNC5 (struct thread*,struct md_req*) ; 
 int FUNC6 (struct md_req*) ; 
 int FUNC7 (struct md_req*) ; 
 scalar_t__ md_debug ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,scalar_t__,int,struct thread*) ; 

__attribute__((used)) static int
FUNC9(struct cdev *dev, u_long cmd, caddr_t addr, int flags,
    struct thread *td)
{
	struct md_req mdr;
	int error;

	if (md_debug)
		FUNC8("mdctlioctl(%s %lx %p %x %p)\n",
			FUNC3(dev), cmd, addr, flags, td);

	FUNC2(&mdr, sizeof(mdr));
	switch (cmd) {
	case MDIOCATTACH:
	case MDIOCDETACH:
	case MDIOCRESIZE:
	case MDIOCQUERY: {
		struct md_ioctl *mdio = (struct md_ioctl *)addr;
		if (mdio->md_version != MDIOVERSION)
			return (EINVAL);
		FUNC0(mdio, &mdr);
		mdr.md_file = mdio->md_file;
		mdr.md_file_seg = UIO_USERSPACE;
		/* If the file is adjacent to the md_ioctl it's in kernel. */
		if ((void *)mdio->md_file == (void *)(mdio + 1))
			mdr.md_file_seg = UIO_SYSSPACE;
		mdr.md_label = mdio->md_label;
		break;
	}
#ifdef COMPAT_FREEBSD32
	case MDIOCATTACH_32:
	case MDIOCDETACH_32:
	case MDIOCRESIZE_32:
	case MDIOCQUERY_32: {
		struct md_ioctl32 *mdio = (struct md_ioctl32 *)addr;
		if (mdio->md_version != MDIOVERSION)
			return (EINVAL);
		MD_IOCTL2REQ(mdio, &mdr);
		mdr.md_file = (void *)(uintptr_t)mdio->md_file;
		mdr.md_file_seg = UIO_USERSPACE;
		mdr.md_label = (void *)(uintptr_t)mdio->md_label;
		break;
	}
#endif
	default:
		/* Fall through to handler switch. */
		break;
	}

	error = 0;
	switch (cmd) {
	case MDIOCATTACH:
#ifdef COMPAT_FREEBSD32
	case MDIOCATTACH_32:
#endif
		error = FUNC4(td, &mdr);
		break;
	case MDIOCDETACH:
#ifdef COMPAT_FREEBSD32
	case MDIOCDETACH_32:
#endif
		error = FUNC5(td, &mdr);
		break;
	case MDIOCRESIZE:
#ifdef COMPAT_FREEBSD32
	case MDIOCRESIZE_32:
#endif
		error = FUNC7(&mdr);
		break;
	case MDIOCQUERY:
#ifdef COMPAT_FREEBSD32
	case MDIOCQUERY_32:
#endif
		error = FUNC6(&mdr);
		break;
	default:
		error = ENOIOCTL;
	}

	switch (cmd) {
	case MDIOCATTACH:
	case MDIOCQUERY: {
		struct md_ioctl *mdio = (struct md_ioctl *)addr;
		FUNC1(&mdr, mdio);
		break;
	}
#ifdef COMPAT_FREEBSD32
	case MDIOCATTACH_32:
	case MDIOCQUERY_32: {
		struct md_ioctl32 *mdio = (struct md_ioctl32 *)addr;
		MD_REQ2IOCTL(&mdr, mdio);
		break;
	}
#endif
	default:
		/* Other commands to not alter mdr. */
		break;
	}

	return (error);
}