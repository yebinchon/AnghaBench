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
struct uio {scalar_t__ uio_segflg; scalar_t__ uio_resid; TYPE_1__* uio_iov; } ;
struct cuse_client_command {int dummy; } ;
struct cuse_client {int /*<<< orphan*/  fflags; struct cuse_client_command* cmds; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int iov_len; scalar_t__ iov_base; } ;

/* Variables and functions */
 size_t CUSE_CMD_READ ; 
 int CUSE_LENGTH_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EWOULDBLOCK ; 
 scalar_t__ UIO_NOCOPY ; 
 scalar_t__ UIO_USERSPACE ; 
 int FUNC0 (struct cuse_client**) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,struct cuse_client*) ; 
 int FUNC2 (struct cuse_client_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cuse_client_command*,uintptr_t,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct cuse_client_command*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int,struct uio*) ; 

__attribute__((used)) static int
FUNC10(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct cuse_client_command *pccmd;
	struct cuse_client *pcc;
	int error;
	int len;

	error = FUNC0(&pcc);
	if (error != 0)
		return (error);

	pccmd = &pcc->cmds[CUSE_CMD_READ];

	if (uio->uio_segflg != UIO_USERSPACE) {
		return (EINVAL);
	}
	uio->uio_segflg = UIO_NOCOPY;

	FUNC4(pccmd);

	while (uio->uio_resid != 0) {

		if (uio->uio_iov->iov_len > CUSE_LENGTH_MAX) {
			error = ENOMEM;
			break;
		}
		len = uio->uio_iov->iov_len;

		FUNC7();
		FUNC3(pccmd,
		    (uintptr_t)uio->uio_iov->iov_base,
		    (unsigned long)(unsigned int)len, pcc->fflags, ioflag);

		error = FUNC2(pccmd, 0, 0);
		FUNC8();

		if (error < 0) {
			error = FUNC6(error);
			break;
		} else if (error == len) {
			error = FUNC9(NULL, error, uio);
			if (error)
				break;
		} else {
			error = FUNC9(NULL, error, uio);
			break;
		}
	}
	FUNC5(pccmd);

	uio->uio_segflg = UIO_USERSPACE;/* restore segment flag */

	if (error == EWOULDBLOCK)
		FUNC1(dev, pcc);

	return (error);
}