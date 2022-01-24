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
typedef  int /*<<< orphan*/  uintmax_t ;
struct uio {size_t uio_resid; scalar_t__ uio_offset; } ;
struct tools_context {int /*<<< orphan*/  access_type; TYPE_1__* tdev; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {int /*<<< orphan*/  fdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,void*,size_t,scalar_t__,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tools_context*,struct uio*,size_t*) ; 
 int FUNC7 (void*,size_t,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct tools_context *context;
	void *kbuf;
	off_t of;
	size_t len, len1;
	int ret;

	ret = FUNC1((void **)&context);
	if (ret != 0)
		return (ret);
	FUNC0(FUNC5(context->tdev->fdev),
	    "tools char device reading %zu bytes at 0x%jx\n", uio->uio_resid,
	    (uintmax_t)uio->uio_offset);

	FUNC6(context, uio, &len);
	if (len == 0)
		return (0);

	kbuf = FUNC3(len, M_DEVBUF, M_WAITOK);
	len1 = uio->uio_resid;
	of = uio->uio_offset;

	ret = FUNC7(kbuf, len, uio);
	if (ret == 0) {
		len1 -= uio->uio_resid;
		ret = FUNC4(context->tdev, kbuf, len, of,
		    context->access_type, &len1);
	}
	FUNC2(kbuf, M_DEVBUF);
	return (ret);
}