#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct msghdr {scalar_t__ msg_controllen; TYPE_1__* msg_iov; } ;
struct cmsghdr {scalar_t__ cmsg_len; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  buf_send; int /*<<< orphan*/  buf_recv; } ;
struct TYPE_6__ {TYPE_2__ ipc_msg; int /*<<< orphan*/  send_data_flag; } ;
struct TYPE_4__ {size_t iov_len; } ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC2 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 TYPE_3__ uc_cfg ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 () ; 

int
FUNC7(int fd, struct msghdr *msghdr)
{
	const struct cmsghdr *cmsghdr;
	size_t size;
	ssize_t ssize;

	if (!uc_cfg.send_data_flag)
		if (FUNC6() < 0)
			return (-1);

	size = msghdr->msg_iov != NULL ? msghdr->msg_iov->iov_len : 0;
	ssize = FUNC2(fd, msghdr, MSG_WAITALL);
	if (ssize < 0) {
		FUNC4("message_recv: recvmsg");
		return (-1);
	}
	if ((size_t)ssize != size) {
		FUNC5("message_recv: recvmsg: received %zd of %zu bytes",
		    ssize, size);
		return (-1);
	}

	FUNC3("recv: data size %zd", ssize);
	FUNC3("recv: msghdr.msg_controllen %u",
	    (u_int)msghdr->msg_controllen);
	cmsghdr = FUNC0(msghdr);
	if (cmsghdr != NULL)
		FUNC3("recv: cmsghdr.cmsg_len %u",
		    (u_int)cmsghdr->cmsg_len);

	if (FUNC1(uc_cfg.ipc_msg.buf_recv, uc_cfg.ipc_msg.buf_send, size) != 0) {
		FUNC5("message_recv: received message has wrong content");
		return (-1);
	}

	return (0);
}