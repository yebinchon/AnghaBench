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
struct _dom_binding {char* dom_domain; int /*<<< orphan*/  dom_vers; scalar_t__ dom_broadcast_pid; int /*<<< orphan*/  dom_lockfd; struct _dom_binding* dom_pnext; } ;

/* Variables and functions */
 char* BINDINGDIR ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  SIGINT ; 
 char* YPBINDLOCK ; 
 int /*<<< orphan*/  YPBINDPROG ; 
 int /*<<< orphan*/  YPBINDVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ppid ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct _dom_binding* ypbindlist ; 
 int /*<<< orphan*/  yplockfd ; 

void
FUNC7(int sig)
{
	struct _dom_binding *ypdb;
	char path[MAXPATHLEN];

	if (ppid != FUNC2())
		FUNC1(0);

	for (ypdb = ypbindlist; ypdb; ypdb = ypdb->dom_pnext) {
		FUNC0(ypdb->dom_lockfd);
		if (ypdb->dom_broadcast_pid)
			FUNC3(ypdb->dom_broadcast_pid, SIGINT);
		FUNC5(path, "%s/%s.%ld", BINDINGDIR,
			ypdb->dom_domain, ypdb->dom_vers);
		FUNC6(path);
	}
	FUNC0(yplockfd);
	FUNC6(YPBINDLOCK);
	FUNC4(YPBINDPROG, YPBINDVERS);
	FUNC1(0);
}