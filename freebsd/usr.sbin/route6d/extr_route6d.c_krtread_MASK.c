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
typedef  int /*<<< orphan*/  u_long ;
struct rt_msghdr {int /*<<< orphan*/  rtm_msglen; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int CTL_NET ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int NET_RT_DUMP ; 
 int PF_ROUTE ; 
 int RT_DUMP_MAXRETRY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_msghdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int*,int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(int again)
{
	int mib[6];
	size_t msize;
	char *buf, *p, *lim;
	struct rt_msghdr *rtm;
	int retry;
	const char *errmsg;

	retry = 0;
	buf = NULL;
	mib[0] = CTL_NET;
	mib[1] = PF_ROUTE;
	mib[2] = 0;
	mib[3] = AF_INET6;	/* Address family */
	mib[4] = NET_RT_DUMP;	/* Dump the kernel routing table */
	mib[5] = 0;		/* No flags */
	do {
		if (retry)
			FUNC5(1);
		retry++;
		errmsg = NULL;
		if (buf) {
			FUNC1(buf);
			buf = NULL;
		}
		if (FUNC6(mib, FUNC3(mib), NULL, &msize, NULL, 0) < 0) {
			errmsg = "sysctl estimate";
			continue;
		}
		if ((buf = FUNC2(msize)) == NULL) {
			errmsg = "malloc";
			continue;
		}
		if (FUNC6(mib, FUNC3(mib), buf, &msize, NULL, 0) < 0) {
			errmsg = "sysctl NET_RT_DUMP";
			continue;
		}
	} while (retry < RT_DUMP_MAXRETRY && errmsg != NULL);
	if (errmsg) {
		FUNC0("%s (with %d retries, msize=%lu)", errmsg, retry,
		    (u_long)msize);
		/*NOTREACHED*/
	} else if (1 < retry)
		FUNC7(LOG_INFO, "NET_RT_DUMP %d retires", retry);

	lim = buf + msize;
	for (p = buf; p < lim; p += rtm->rtm_msglen) {
		rtm = (struct rt_msghdr *)(void *)p;
		FUNC4(rtm, again);
	}
	FUNC1(buf);
}