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
typedef  int /*<<< orphan*/  val ;
typedef  int u_int ;
struct msghdr {int dummy; } ;
struct iovec {int dummy; } ;
struct cmsghdr {int dummy; } ;
struct TYPE_5__ {int msg_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  gid_num; } ;
struct TYPE_6__ {scalar_t__ sock_type; TYPE_2__ ipc_msg; TYPE_1__ proc_cred; } ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCAL_CREDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 TYPE_3__ uc_cfg ; 
 scalar_t__ FUNC6 (struct msghdr*,int) ; 
 scalar_t__ FUNC7 (struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int,struct msghdr*) ; 
 int /*<<< orphan*/  FUNC11 (struct msghdr*,struct iovec*,void*,size_t) ; 
 int FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 () ; 

__attribute__((used)) static int
FUNC15(int type, int fd1)
{
	struct msghdr msghdr;
	struct iovec iov[1];
	struct cmsghdr *cmsghdr;
	void *cmsg_data;
	size_t cmsg_size;
	u_int i;
	int fd2, rv, val;

	fd2 = -1;
	rv = -2;

	cmsg_size = FUNC1(FUNC2(uc_cfg.proc_cred.gid_num));
	cmsg_data = FUNC4(cmsg_size);
	if (cmsg_data == NULL) {
		FUNC9("malloc");
		goto done;
	}

	if (type == 1) {
		FUNC8("setting LOCAL_CREDS");
		val = 1;
		if (FUNC5(fd1, 0, LOCAL_CREDS, &val, sizeof(val)) < 0) {
			FUNC9("setsockopt(LOCAL_CREDS)");
			goto done;
		}
	}

	if (FUNC14() < 0)
		goto done;

	if (uc_cfg.sock_type == SOCK_STREAM) {
		fd2 = FUNC12(fd1);
		if (fd2 < 0)
			goto done;
	} else
		fd2 = fd1;

	if (type == 2) {
		FUNC8("setting LOCAL_CREDS");
		val = 1;
		if (FUNC5(fd2, 0, LOCAL_CREDS, &val, sizeof(val)) < 0) {
			FUNC9("setsockopt(LOCAL_CREDS)");
			goto done;
		}
		if (FUNC14() < 0)
			goto done;
	}

	rv = -1;
	for (i = 1; i <= uc_cfg.ipc_msg.msg_num; ++i) {
		FUNC8("message #%u", i);

		FUNC11(&msghdr, iov, cmsg_data, cmsg_size);
		if (FUNC10(fd2, &msghdr) < 0) {
			rv = -2;
			break;
		}

		if (i > 1 && uc_cfg.sock_type == SOCK_STREAM) {
			if (FUNC6(&msghdr, 0) < 0)
				break;
		} else {
			if (FUNC6(&msghdr, sizeof(*cmsghdr)) < 0)
				break;

			cmsghdr = FUNC0(&msghdr);
			if (FUNC7(cmsghdr) < 0)
				break;
		}
	}
	if (i > uc_cfg.ipc_msg.msg_num)
		rv = 0;
done:
	FUNC3(cmsg_data);
	if (uc_cfg.sock_type == SOCK_STREAM && fd2 >= 0)
		if (FUNC13(fd2) < 0)
			rv = -2;
	return (rv);
}