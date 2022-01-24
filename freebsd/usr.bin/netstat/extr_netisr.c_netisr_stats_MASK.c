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
typedef  size_t u_int ;
struct sysctl_netisr_workstream {int dummy; } ;
struct sysctl_netisr_proto {int dummy; } ;

/* Variables and functions */
 scalar_t__ bindthreads ; 
 int /*<<< orphan*/  defaultqlimit ; 
 int /*<<< orphan*/  dispatch_policy ; 
 scalar_t__ live ; 
 int /*<<< orphan*/  maxqlimit ; 
 int /*<<< orphan*/  maxthreads ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sysctl_netisr_proto*) ; 
 int /*<<< orphan*/  FUNC8 (struct sysctl_netisr_workstream*) ; 
 int /*<<< orphan*/  numthreads ; 
 struct sysctl_netisr_proto* proto_array ; 
 size_t proto_array_len ; 
 struct sysctl_netisr_workstream* workstream_array ; 
 size_t workstream_array_len ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void
FUNC16(void)
{
	struct sysctl_netisr_workstream *snwsp;
	struct sysctl_netisr_proto *snpp;
	u_int i;

	if (live) {
		FUNC3();
		FUNC4();
		FUNC6();
		FUNC5();
	} else {
		FUNC0();
		FUNC1();
		FUNC2();		/* Also does work. */
	}

	FUNC13("netisr");

	FUNC12("{T:Configuration}:\n");
	FUNC12("{T:/%-25s} {T:/%12s} {T:/%12s}\n",
	    "Setting", "Current", "Limit");
	FUNC12("{T:/%-25s} {T:/%12u} {T:/%12u}\n",
	    "Thread count", numthreads, maxthreads);
	FUNC12("{T:/%-25s} {T:/%12u} {T:/%12u}\n",
	    "Default queue limit", defaultqlimit, maxqlimit);
	FUNC12("{T:/%-25s} {T:/%12s} {T:/%12s}\n",
	    "Dispatch policy", dispatch_policy, "n/a");
	FUNC12("{T:/%-25s} {T:/%12s} {T:/%12s}\n",
	    "Threads bound to CPUs", bindthreads ? "enabled" : "disabled",
	    "n/a");
	FUNC12("\n");

	FUNC12("{T:Protocols}:\n");
	FUNC12("{T:/%-6s} {T:/%5s} {T:/%6s} {T:/%-6s} {T:/%-8s} {T:/%-5s}\n",
	    "Name", "Proto", "QLimit", "Policy", "Dispatch", "Flags");
	FUNC15("protocol");
	for (i = 0; i < proto_array_len; i++) {
		FUNC14("protocol");
		snpp = &proto_array[i];
		FUNC7(snpp);
		FUNC10("protocol");
	}
	FUNC11("protocol");
	FUNC12("\n");

	FUNC12("{T:Workstreams}:\n");
	FUNC12("{T:/%4s} {T:/%3s} ", "WSID", "CPU");
	FUNC12("{P:/%2s}", "");
	FUNC12("{T:/%-6s} {T:/%5s} {T:/%5s} {T:/%8s} {T:/%8s} {T:/%8s} "
	    "{T:/%8s} {T:/%8s}\n",
	    "Name", "Len", "WMark", "Disp'd", "HDisp'd", "QDrops", "Queued",
	    "Handled");
	FUNC15("workstream");
	for (i = 0; i < workstream_array_len; i++) {
		FUNC14("workstream");
		snwsp = &workstream_array[i];
		FUNC8(snwsp);
		FUNC10("workstream");
	}
	FUNC11("workstream");
	FUNC9("netisr");
}