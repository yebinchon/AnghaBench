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
struct iovec {int iov_len; struct ieee80211_bpf_params* iov_base; } ;
struct ieee80211_bpf_params {int ibp_len; } ;
typedef  int /*<<< orphan*/  iov ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int,struct iovec*,int) ; 

void FUNC4(int fd, void *buf, int buflen, struct ieee80211_bpf_params *p)
{
	struct iovec iov[2];
	int totlen;
	int rc;

	iov[0].iov_base = p;
	iov[0].iov_len = p->ibp_len;

	iov[1].iov_base = buf;
	iov[1].iov_len = buflen;
	totlen = iov[0].iov_len + iov[1].iov_len;

	rc = FUNC3(fd, iov, sizeof(iov)/sizeof(struct iovec));
	if (rc == -1)
		FUNC0(1, "writev()");
	if (rc != totlen) {
		FUNC2("Wrote only %d/%d\n", rc, totlen);
		FUNC1(1);
	}
}