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

/* Variables and functions */
 int CTL_NET ; 
 int IPPROTO_TCP ; 
 int PF_INET ; 
 int TCPCTL_STATS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  initstat ; 
 int /*<<< orphan*/  oldstat ; 
 scalar_t__ FUNC1 (int*,int,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
	size_t len;
	int name[4];

	name[0] = CTL_NET;
	name[1] = PF_INET;
	name[2] = IPPROTO_TCP;
	name[3] = TCPCTL_STATS;

	len = sizeof initstat;
	if (FUNC1(name, 4, &initstat, &len, 0, 0) < 0) {
		FUNC0("sysctl getting tcpstat failed");
	}
	oldstat = initstat;
}