#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct msghdr {scalar_t__ msg_controllen; TYPE_1__* msg_iov; } ;
struct cmsghdr {scalar_t__ cmsg_len; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  send_data_flag; } ;
struct TYPE_3__ {size_t iov_len; } ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr const*) ; 
 scalar_t__ FUNC1 (int,struct msghdr const*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uc_cfg ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,size_t) ; 
 scalar_t__ FUNC5 () ; 

int
FUNC6(int fd, const struct msghdr *msghdr)
{
	const struct cmsghdr *cmsghdr;
	size_t size;
	ssize_t ssize;

	size = msghdr->msg_iov != 0 ? msghdr->msg_iov->iov_len : 0;
	FUNC2("send: data size %zu", size);
	FUNC2("send: msghdr.msg_controllen %u",
	    (u_int)msghdr->msg_controllen);
	cmsghdr = FUNC0(msghdr);
	if (cmsghdr != NULL)
		FUNC2("send: cmsghdr.cmsg_len %u",
		    (u_int)cmsghdr->cmsg_len);

	ssize = FUNC1(fd, msghdr, 0);
	if (ssize < 0) {
		FUNC3("message_send: sendmsg");
		return (-1);
	}
	if ((size_t)ssize != size) {
		FUNC4("message_send: sendmsg: sent %zd of %zu bytes",
		    ssize, size);
		return (-1);
	}

	if (!uc_cfg.send_data_flag)
		if (FUNC5() < 0)
			return (-1);

	return (0);
}