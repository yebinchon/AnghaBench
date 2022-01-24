#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_adapter_t ;
struct TYPE_2__ {char* pr_hostname; int /*<<< orphan*/  pr_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  attr_mask ; 
 scalar_t__ blanked ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  message ; 
 int messagelen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* osrelease ; 
 char* ostype ; 
 TYPE_1__ prison0 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(video_adapter_t *adp)
{
	size_t hostlen;

	FUNC2(&prison0.pr_mtx);
	for (;;) {
		hostlen = FUNC5(prison0.pr_hostname);
		FUNC3(&prison0.pr_mtx);
	
		messagelen = hostlen + 3 + FUNC5(ostype) + 1 +
		    FUNC5(osrelease);
		message = FUNC1(messagelen + 1, M_DEVBUF, M_WAITOK);
		FUNC2(&prison0.pr_mtx);
		if (hostlen < FUNC5(prison0.pr_hostname)) {
			FUNC0(message, M_DEVBUF);
			continue;
		}
		break;
	}
	FUNC4(message, "%s - %s %s", prison0.pr_hostname, ostype, osrelease);
	FUNC3(&prison0.pr_mtx);
	blanked = 0;
	attr_mask = ~0;

	return 0;
}