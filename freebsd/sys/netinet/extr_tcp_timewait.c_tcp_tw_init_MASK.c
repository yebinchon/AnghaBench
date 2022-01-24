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
struct tcptw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/  V_tcptw_zone ; 
 int /*<<< orphan*/  V_tw_lock ; 
 int /*<<< orphan*/  V_twq_2msl ; 
 scalar_t__ maxtcptw ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC6(void)
{

	V_tcptw_zone = FUNC4("tcptw", sizeof(struct tcptw),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	FUNC1("net.inet.tcp.maxtcptw", &maxtcptw);
	if (maxtcptw == 0)
		FUNC5(V_tcptw_zone, FUNC3());
	else
		FUNC5(V_tcptw_zone, maxtcptw);
	FUNC0(&V_twq_2msl);
	FUNC2(V_tw_lock, "tcptw");
}