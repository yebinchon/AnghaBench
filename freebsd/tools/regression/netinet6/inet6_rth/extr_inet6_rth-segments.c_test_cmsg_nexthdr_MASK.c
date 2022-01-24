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
struct msghdr {int msg_controllen; int /*<<< orphan*/ * msg_control; } ;
struct cmsghdr {int cmsg_len; } ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  cmh ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int /*<<< orphan*/  ancbuf ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct cmsghdr* FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct msghdr*,struct cmsghdr*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

void
FUNC10()
{
	struct msghdr  mh;
	struct cmsghdr cmh;
	struct cmsghdr *cmhp, *cmhnextp;
	char ancbuf[10240];
	char magic[] = "MAGIC";

	FUNC8("test_cmsg_nexthdr", sizeof("test_cmsg_nexthdr"));

	/*
	 * Test: More than one cmsghdr
	 */
	FUNC7(&mh, &cmh, ancbuf, sizeof(ancbuf));
	mh.msg_control = (caddr_t)ancbuf;
	mh.msg_controllen  = FUNC3(0) * 2;	/* 2 cmsghdr with no data */
	cmh.cmsg_len = FUNC1(0);

	/* 
	 * Copy the same instance of cmsghdr twice. Use a magic value
	 * to id the second copy.
	 */
	FUNC4((void *)&cmh, (void *)ancbuf, sizeof(cmh));
	FUNC9((char *)&cmh, (const char *)&magic, sizeof(magic));
	FUNC4((void *)&cmh,
	    (void *)((caddr_t)ancbuf + FUNC3(0)),
	    sizeof(cmh));
	cmhp = FUNC0(&mh);
	cmhnextp = FUNC2(&mh, cmhp);
	FUNC6((const char *)&magic, (const char *)cmhnextp, sizeof(magic),
	    "more than one cmsghdr\0");

	/*
	 * Test: only one cmsghdr
	 */
	FUNC7(&mh, &cmh, ancbuf, sizeof(ancbuf));
	mh.msg_control = (caddr_t)ancbuf;
	mh.msg_controllen  = FUNC3(0);
	cmh.cmsg_len = FUNC1(0);
	FUNC4((void *)&cmh, (void *)ancbuf, sizeof(cmh));
	cmhp = FUNC0(&mh);
	cmhnextp = FUNC2(&mh, cmhp);
	FUNC5(NULL, (caddr_t)cmhnextp, "only one cmsghdr\0");

	/*
	 * Test: NULL cmsg pointer
	 */
	FUNC7(&mh, &cmh, ancbuf, sizeof(ancbuf));
	mh.msg_control = (caddr_t)ancbuf;
	mh.msg_controllen  = sizeof(ancbuf);
	cmh.cmsg_len = sizeof(ancbuf);
	FUNC4((void *)&cmh, (void *)ancbuf, sizeof(cmh));
	cmhp = FUNC0(&mh);
	cmhnextp = FUNC2(&mh, NULL);
	FUNC5((caddr_t)cmhp, (caddr_t)cmhnextp, "null second argument\0");
}