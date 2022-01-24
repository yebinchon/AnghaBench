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
struct cuse_client_command {int dummy; } ;
struct cuse_client {scalar_t__ ioctl_buffer; int /*<<< orphan*/  fflags; struct cuse_client_command* cmds; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int CUSE_BUFFER_MAX ; 
 long CUSE_BUF_MIN_PTR ; 
 size_t CUSE_CMD_IOCTL ; 
 int ENOMEM ; 
 int EWOULDBLOCK ; 
 int FUNC0 (unsigned long) ; 
 unsigned long IOC_IN ; 
 unsigned long IOC_OUT ; 
 unsigned long IOC_VOID ; 
 int /*<<< orphan*/  IO_NDELAY ; 
 int O_NONBLOCK ; 
 int FUNC1 (struct cuse_client**) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,struct cuse_client*) ; 
 int FUNC3 (struct cuse_client_command*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_client_command*,long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cuse_client_command*) ; 
 int /*<<< orphan*/  FUNC6 (struct cuse_client_command*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int) ; 

int
FUNC11(struct cdev *dev, unsigned long cmd,
    caddr_t data, int fflag, struct thread *td)
{
	struct cuse_client_command *pccmd;
	struct cuse_client *pcc;
	int error;
	int len;

	error = FUNC1(&pcc);
	if (error != 0)
		return (error);

	len = FUNC0(cmd);
	if (len > CUSE_BUFFER_MAX)
		return (ENOMEM);

	pccmd = &pcc->cmds[CUSE_CMD_IOCTL];

	FUNC5(pccmd);

	if (cmd & (IOC_IN | IOC_VOID))
		FUNC10(pcc->ioctl_buffer, data, len);

	/*
	 * When the ioctl-length is zero drivers can pass information
	 * through the data pointer of the ioctl. Make sure this information
	 * is forwarded to the driver.
	 */

	FUNC8();
	FUNC4(pccmd,
	    (len == 0) ? *(long *)data : CUSE_BUF_MIN_PTR,
	    (unsigned long)cmd, pcc->fflags,
	    (fflag & O_NONBLOCK) ? IO_NDELAY : 0);

	error = FUNC3(pccmd, data, len);
	FUNC9();

	if (error < 0) {
		error = FUNC7(error);
	} else {
		error = 0;
	}

	if (cmd & IOC_OUT)
		FUNC10(data, pcc->ioctl_buffer, len);

	FUNC6(pccmd);

	if (error == EWOULDBLOCK)
		FUNC2(dev, pcc);

	return (error);
}