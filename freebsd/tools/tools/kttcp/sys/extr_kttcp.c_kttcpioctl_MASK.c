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
struct kttcp_io_args {int dummy; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FWRITE ; 
#define  KTTCP_IO_RECV 129 
#define  KTTCP_IO_SEND 128 
 int FUNC0 (struct thread*,struct kttcp_io_args*) ; 
 int FUNC1 (struct thread*,struct kttcp_io_args*) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
	int error;

	if ((flag & FWRITE) == 0)
		return EPERM;

	switch (cmd) {
	case KTTCP_IO_SEND:
		error = FUNC1(td, (struct kttcp_io_args *) data);
		break;

	case KTTCP_IO_RECV:
		error = FUNC0(td, (struct kttcp_io_args *) data);
		break;

	default:
		return EINVAL;
	}

	return error;
}