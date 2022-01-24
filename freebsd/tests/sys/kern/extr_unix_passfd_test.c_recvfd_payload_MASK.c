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
struct msghdr {char* msg_control; size_t msg_controllen; int msg_iovlen; struct iovec* msg_iov; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; scalar_t__ cmsg_len; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  msghdr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC3 (struct msghdr*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct cmsghdr* FUNC5 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ SCM_CREDS ; 
 scalar_t__ SCM_RIGHTS ; 
 scalar_t__ SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC6 (struct msghdr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(int sockfd, int *recv_fd, void *buf, size_t buflen,
    size_t cmsgsz)
{
	struct cmsghdr *cmsghdr;
	struct msghdr msghdr;
	struct iovec iovec;
	char *message;
	ssize_t len;
	bool foundcreds;

	FUNC6(&msghdr, sizeof(msghdr));
	message = FUNC8(cmsgsz);
	FUNC0(message != NULL);

	msghdr.msg_control = message;
	msghdr.msg_controllen = cmsgsz;

	iovec.iov_base = buf;
	iovec.iov_len = buflen;

	msghdr.msg_iov = &iovec;
	msghdr.msg_iovlen = 1;

	len = FUNC10(sockfd, &msghdr, 0);
	FUNC1(len != -1, "recvmsg failed: %s", FUNC11(errno));
	FUNC1((size_t)len == buflen,
	    "recvmsg: %zd bytes received; expected %zd", len, buflen);

	cmsghdr = FUNC3(&msghdr);
	FUNC1(cmsghdr != NULL,
	    "recvmsg: did not receive control message");
	foundcreds = false;
	*recv_fd = -1;
	for (; cmsghdr != NULL; cmsghdr = FUNC5(&msghdr, cmsghdr)) {
		if (cmsghdr->cmsg_level == SOL_SOCKET &&
		    cmsghdr->cmsg_type == SCM_RIGHTS &&
		    cmsghdr->cmsg_len == FUNC4(sizeof(int))) {
			FUNC9(recv_fd, FUNC2(cmsghdr), sizeof(int));
			FUNC0(*recv_fd != -1);
		} else if (cmsghdr->cmsg_level == SOL_SOCKET &&
		    cmsghdr->cmsg_type == SCM_CREDS)
			foundcreds = true;
	}
	FUNC1(*recv_fd != -1,
	    "recvmsg: did not receive single-fd message");
	FUNC1(!FUNC7(sockfd) || foundcreds,
	    "recvmsg: expected credentials were not received");
}