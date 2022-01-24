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
struct msghdr {size_t msg_controllen; } ;
struct iovec {int dummy; } ;
struct cmsghdr {int cmsg_type; int /*<<< orphan*/  cmsg_len; int /*<<< orphan*/  cmsg_level; } ;
struct TYPE_2__ {scalar_t__ send_array_flag; } ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 TYPE_1__ uc_cfg ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,struct iovec*,void*) ; 

void
FUNC5(struct msghdr *msghdr, struct iovec *iov,
    void *cmsg_data, size_t cmsg_size, int type, size_t arr_size)
{
	struct cmsghdr *cmsghdr;

	FUNC4(msghdr, iov, cmsg_data);
	if (cmsg_data != NULL) {
		if (uc_cfg.send_array_flag)
			FUNC3("sending an array");
		else
			FUNC3("sending a scalar");
		msghdr->msg_controllen = uc_cfg.send_array_flag ?
		    cmsg_size : FUNC2(0);
		cmsghdr = FUNC0(msghdr);
		cmsghdr->cmsg_level = SOL_SOCKET;
		cmsghdr->cmsg_type = type;
		cmsghdr->cmsg_len = FUNC1(uc_cfg.send_array_flag ? arr_size : 0);
	} else
		msghdr->msg_controllen = 0;
}