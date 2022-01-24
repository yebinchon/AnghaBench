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
typedef  int u_int ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; int cmsg_len; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 scalar_t__ SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int
FUNC2(const struct cmsghdr *cmsghdr, int type, size_t size)
{
	if (cmsghdr == NULL) {
		FUNC1("cmsghdr is NULL");
		return (-1);
	}
	if (cmsghdr->cmsg_level != SOL_SOCKET) {
		FUNC1("cmsghdr.cmsg_level %d != SOL_SOCKET",
		    cmsghdr->cmsg_level);
		return (-1);
	}
	if (cmsghdr->cmsg_type != type) {
		FUNC1("cmsghdr.cmsg_type %d != %d",
		    cmsghdr->cmsg_type, type);
		return (-1);
	}
	if (cmsghdr->cmsg_len != FUNC0(size)) {
		FUNC1("cmsghdr.cmsg_len %u != %zu",
		    (u_int)cmsghdr->cmsg_len, FUNC0(size));
		return (-1);
	}
	return (0);
}