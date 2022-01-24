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
struct msghdr {char* msg_control; size_t msg_controllen; int msg_iovlen; int msg_flags; struct iovec* msg_iov; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  msghdr ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int sockfd, char *cmsg, size_t cmsgsz, int flags)
{
	struct iovec iov;
	struct msghdr msghdr;
	ssize_t len;
	char ch;

	ch = 0;
	FUNC1(&msghdr, sizeof(msghdr));

	iov.iov_base = &ch;
	iov.iov_len = sizeof(ch);
	msghdr.msg_control = cmsg;
	msghdr.msg_controllen = cmsgsz;
	msghdr.msg_iov = &iov;
	msghdr.msg_iovlen = 1;

	len = FUNC2(sockfd, &msghdr, 0);
	FUNC0(len != -1,
	    "recvmsg failed: %s", FUNC3(errno));
	FUNC0(len == sizeof(ch),
	    "recvmsg: %zd bytes received; expected %zu", len, sizeof(ch));
	FUNC0((msghdr.msg_flags & flags) == flags,
	    "recvmsg: got flags %#x; expected %#x", msghdr.msg_flags, flags);
}