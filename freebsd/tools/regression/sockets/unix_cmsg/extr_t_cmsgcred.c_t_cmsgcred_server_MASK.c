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
typedef  int u_int ;
struct msghdr {int dummy; } ;
struct iovec {int dummy; } ;
struct cmsghdr {int dummy; } ;
struct cmsgcred {int dummy; } ;
struct TYPE_3__ {int msg_num; } ;
struct TYPE_4__ {scalar_t__ sock_type; TYPE_1__ ipc_msg; } ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t) ; 
 TYPE_2__ uc_cfg ; 
 scalar_t__ FUNC4 (struct msghdr*,int) ; 
 scalar_t__ FUNC5 (struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int,struct msghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct msghdr*,struct iovec*,void*,size_t) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 () ; 

__attribute__((used)) static int
FUNC13(int fd1)
{
	struct msghdr msghdr;
	struct iovec iov[1];
	struct cmsghdr *cmsghdr;
	void *cmsg_data;
	size_t cmsg_size;
	u_int i;
	int fd2, rv;

	if (FUNC12() < 0)
		return (-2);

	fd2 = -1;
	rv = -2;

	cmsg_size = FUNC1(sizeof(struct cmsgcred));
	cmsg_data = FUNC3(cmsg_size);
	if (cmsg_data == NULL) {
		FUNC7("malloc");
		goto done;
	}

	if (uc_cfg.sock_type == SOCK_STREAM) {
		fd2 = FUNC10(fd1);
		if (fd2 < 0)
			goto done;
	} else
		fd2 = fd1;

	rv = -1;
	for (i = 1; i <= uc_cfg.ipc_msg.msg_num; ++i) {
		FUNC6("message #%u", i);

		FUNC9(&msghdr, iov, cmsg_data, cmsg_size);
		if (FUNC8(fd2, &msghdr) < 0) {
			rv = -2;
			break;
		}

		if (FUNC4(&msghdr, sizeof(*cmsghdr)) < 0)
			break;

		cmsghdr = FUNC0(&msghdr);
		if (FUNC5(cmsghdr) < 0)
			break;
	}
	if (i > uc_cfg.ipc_msg.msg_num)
		rv = 0;
done:
	FUNC2(cmsg_data);
	if (uc_cfg.sock_type == SOCK_STREAM && fd2 >= 0)
		if (FUNC11(fd2) < 0)
			rv = -2;
	return (rv);
}