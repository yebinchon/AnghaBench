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
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; scalar_t__ cmsg_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 scalar_t__ FUNC1 (struct msghdr*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ IPPROTO_IPV6 ; 
 scalar_t__ IPV6_HOPLIMIT ; 

int
FUNC4(struct msghdr *mhdr)
{
	struct cmsghdr *cm;

	for (cm = (struct cmsghdr *)FUNC1(mhdr); cm;
	    cm = (struct cmsghdr *)FUNC3(mhdr, cm)) {
		if (cm->cmsg_level == IPPROTO_IPV6 &&
		    cm->cmsg_type == IPV6_HOPLIMIT &&
		    cm->cmsg_len == FUNC2(sizeof(int)))
			return (*(int *)FUNC0(cm));
	}

	return (-1);
}