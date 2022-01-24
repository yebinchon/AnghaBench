#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vfsoptlist {int dummy; } ;
struct vfsopt {char* name; char* value; size_t len; unsigned int pos; scalar_t__ seen; } ;
struct uio {unsigned int uio_iovcnt; scalar_t__ uio_segflg; TYPE_1__* uio_iov; } ;
struct TYPE_2__ {size_t iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct vfsoptlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsoptlist*,struct vfsopt*,int /*<<< orphan*/ ) ; 
 scalar_t__ UIO_SYSSPACE ; 
 size_t VFS_MOUNTARG_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  link ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsoptlist*) ; 
 int /*<<< orphan*/  FUNC6 (struct vfsoptlist*) ; 

int
FUNC7(struct uio *auio, struct vfsoptlist **options)
{
	struct vfsoptlist *opts;
	struct vfsopt *opt;
	size_t memused, namelen, optlen;
	unsigned int i, iovcnt;
	int error;

	opts = FUNC4(sizeof(struct vfsoptlist), M_MOUNT, M_WAITOK);
	FUNC0(opts);
	memused = 0;
	iovcnt = auio->uio_iovcnt;
	for (i = 0; i < iovcnt; i += 2) {
		namelen = auio->uio_iov[i].iov_len;
		optlen = auio->uio_iov[i + 1].iov_len;
		memused += sizeof(struct vfsopt) + optlen + namelen;
		/*
		 * Avoid consuming too much memory, and attempts to overflow
		 * memused.
		 */
		if (memused > VFS_MOUNTARG_SIZE_MAX ||
		    optlen > VFS_MOUNTARG_SIZE_MAX ||
		    namelen > VFS_MOUNTARG_SIZE_MAX) {
			error = EINVAL;
			goto bad;
		}

		opt = FUNC4(sizeof(struct vfsopt), M_MOUNT, M_WAITOK);
		opt->name = FUNC4(namelen, M_MOUNT, M_WAITOK);
		opt->value = NULL;
		opt->len = 0;
		opt->pos = i / 2;
		opt->seen = 0;

		/*
		 * Do this early, so jumps to "bad" will free the current
		 * option.
		 */
		FUNC1(opts, opt, link);

		if (auio->uio_segflg == UIO_SYSSPACE) {
			FUNC2(auio->uio_iov[i].iov_base, opt->name, namelen);
		} else {
			error = FUNC3(auio->uio_iov[i].iov_base, opt->name,
			    namelen);
			if (error)
				goto bad;
		}
		/* Ensure names are null-terminated strings. */
		if (namelen == 0 || opt->name[namelen - 1] != '\0') {
			error = EINVAL;
			goto bad;
		}
		if (optlen != 0) {
			opt->len = optlen;
			opt->value = FUNC4(optlen, M_MOUNT, M_WAITOK);
			if (auio->uio_segflg == UIO_SYSSPACE) {
				FUNC2(auio->uio_iov[i + 1].iov_base, opt->value,
				    optlen);
			} else {
				error = FUNC3(auio->uio_iov[i + 1].iov_base,
				    opt->value, optlen);
				if (error)
					goto bad;
			}
		}
	}
	FUNC6(opts);
	*options = opts;
	return (0);
bad:
	FUNC5(opts);
	return (error);
}