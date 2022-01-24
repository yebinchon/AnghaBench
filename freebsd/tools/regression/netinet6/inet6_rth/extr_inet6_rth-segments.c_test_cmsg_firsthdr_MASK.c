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
struct cmsghdr {int dummy; } ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  cmh ;
typedef  void* caddr_t ;
typedef  int /*<<< orphan*/  ancbuf ;

/* Variables and functions */
 struct cmsghdr* FUNC0 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,struct cmsghdr*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

void
FUNC8()
{
	struct msghdr  mh;
	struct cmsghdr cmh;
	struct cmsghdr *cmhp;
	char ancbuf[1024];
	char magic[] = "MAGIC";

	FUNC6("test_cmsg_firsthdr", sizeof("test_cmsg_firsthdr"));

	/* CMSG_FIRSTHDR() where msg_control is NULL */
	FUNC4(&mh, NULL, NULL, 0);
	mh.msg_control = NULL;
	cmhp = FUNC0(&mh);
	FUNC2(NULL, (caddr_t)cmhp,
	    "msg_control is NULL\0");

	/* - where msg_controllen < sizeof cmsghdr */
	FUNC4(&mh, NULL, NULL, 0);
	mh.msg_control = (caddr_t)&cmh;
	mh.msg_controllen = sizeof(cmh) - 1;
	cmhp = FUNC0(&mh);
	FUNC2(NULL, (caddr_t)cmhp,
	    "msg_controllen < sizeof cmsghdr\0");

	/* - where msg_controllen == 0 */
	FUNC4(&mh, NULL, NULL, 0);
	mh.msg_control = (caddr_t)&cmh;
	mh.msg_controllen = 0;
	cmhp = FUNC0(&mh);
	FUNC2(NULL, (caddr_t)cmhp,
	    "msg_controllen == 0\0");

	/* no errors */
	FUNC4(&mh, &cmh, ancbuf, sizeof(ancbuf));
	FUNC5((void *)ancbuf, 0, sizeof(ancbuf));
	mh.msg_control = (caddr_t)ancbuf;
	mh.msg_controllen  = sizeof(ancbuf);
	FUNC7((char *)&cmh, (const char *)&magic, sizeof(magic));
	FUNC1((void *)&cmh, (void *)ancbuf, sizeof(cmh));
	cmhp = FUNC0(&mh);
	FUNC3((const char *)&magic, (const char *)cmhp, sizeof(magic),
	    "with payload\0");
}