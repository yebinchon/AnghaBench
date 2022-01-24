#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vattr {size_t va_size; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  IO_NODELOCKED ; 
 int /*<<< orphan*/  M_VERIEXEC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,TYPE_1__*) ; 

__attribute__((used)) static char*
FUNC9(char *path, unsigned char *digest)
{
	struct nameidata	nid;
	struct vattr		va;
	char			*data;
	ssize_t			bytes_read, resid;
	int			rc;

	data = NULL;
	bytes_read = 0;

	rc = FUNC4(path, &nid);
	if (rc != 0)
		goto fail;

	rc = FUNC0(nid.ni_vp, &va, curthread->td_ucred);
	if (rc != 0)
		goto fail;

	data = (char *)FUNC3(va.va_size + 1, M_VERIEXEC, M_WAITOK);

	while (bytes_read < va.va_size) {
		rc = FUNC8(
		    UIO_READ, nid.ni_vp, data,
		    va.va_size - bytes_read, bytes_read,
		    UIO_SYSSPACE, IO_NODELOCKED,
		    curthread->td_ucred, NOCRED, &resid, curthread);
		if (rc != 0)
			goto fail;

		bytes_read = va.va_size - resid;
	}

	data[bytes_read] = '\0';

	FUNC1(nid.ni_vp, 0);
	(void)FUNC7(nid.ni_vp, FREAD, curthread->td_ucred, curthread);

	/*
	 * If digest is wrong someone might be trying to fool us.
	 */
	if (FUNC6(data, va.va_size, digest))
		FUNC5("Manifest hash doesn't match expected value!");

	return (data);

fail:
	if (data != NULL)
		FUNC2(data, M_VERIEXEC);

	return (NULL);
}