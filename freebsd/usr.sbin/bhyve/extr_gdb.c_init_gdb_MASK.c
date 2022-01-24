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
struct vmctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVF_READ ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 struct vmctx* ctx ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  gdb_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  idle_vcpus ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new_connection ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int stepping_vcpu ; 
 int stopped_vcpu ; 
 int /*<<< orphan*/  vcpus_suspended ; 

void
FUNC14(struct vmctx *_ctx, int sport, bool wait)
{
	struct sockaddr_in sin;
	int error, flags, s;

	FUNC2("==> starting on %d, %swaiting\n", sport, wait ? "" : "not ");

	error = FUNC12(&gdb_lock, NULL);
	if (error != 0)
		FUNC4(1, error, "gdb mutex init");
	error = FUNC11(&idle_vcpus, NULL);
	if (error != 0)
		FUNC4(1, error, "gdb cv init");

	ctx = _ctx;
	s = FUNC13(PF_INET, SOCK_STREAM, 0);
	if (s < 0)
		FUNC3(1, "gdb socket create");

	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC6(INADDR_ANY);
	sin.sin_port = FUNC7(sport);

	if (FUNC1(s, (struct sockaddr *)&sin, sizeof(sin)) < 0)
		FUNC3(1, "gdb socket bind");

	if (FUNC9(s, 1) < 0)
		FUNC3(1, "gdb socket listen");

	if (wait) {
		/*
		 * Set vcpu 0 in vcpus_suspended.  This will trigger the
		 * logic in gdb_cpu_add() to suspend the first vcpu before
		 * it starts execution.  The vcpu will remain suspended
		 * until a debugger connects.
		 */
		stepping_vcpu = -1;
		stopped_vcpu = -1;
		FUNC0(0, &vcpus_suspended);
	}

	flags = FUNC5(s, F_GETFL);
	if (FUNC5(s, F_SETFL, flags | O_NONBLOCK) == -1)
		FUNC3(1, "Failed to mark gdb socket non-blocking");

#ifndef WITHOUT_CAPSICUM
	FUNC8(s);
#endif
	FUNC10(s, EVF_READ, new_connection, NULL);
}