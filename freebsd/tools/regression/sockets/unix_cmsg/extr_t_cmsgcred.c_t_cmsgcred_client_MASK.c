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
struct msghdr {int dummy; } ;
struct iovec {int dummy; } ;
struct cmsgcred {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  SCM_CREDS ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,struct msghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,struct iovec*,void*,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 

int
FUNC8(int fd)
{
	struct msghdr msghdr;
	struct iovec iov[1];
	void *cmsg_data;
	size_t cmsg_size;
	int rv;

	if (FUNC7() < 0)
		return (-2);

	rv = -2;

	cmsg_size = FUNC0(sizeof(struct cmsgcred));
	cmsg_data = FUNC2(cmsg_size);
	if (cmsg_data == NULL) {
		FUNC3("malloc");
		goto done;
	}
	FUNC5(&msghdr, iov, cmsg_data, cmsg_size,
	    SCM_CREDS, sizeof(struct cmsgcred));

	if (FUNC6(fd) < 0)
		goto done;

	if (FUNC4(fd, &msghdr) < 0)
		goto done;

	rv = 0;
done:
	FUNC1(cmsg_data);
	return (rv);
}