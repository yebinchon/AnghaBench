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
struct TYPE_2__ {int /*<<< orphan*/  (* acu_disconnect ) () ;int /*<<< orphan*/  acu_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DV ; 
 int /*<<< orphan*/  HOST ; 
 char* NOSTR ; 
 int /*<<< orphan*/  VERBOSE ; 
 TYPE_1__* acu ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conflag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(char *reason)
{
	if (!conflag) {
		FUNC1(FUNC4(HOST), "", DV, "call terminated");
		return;
	}
	if (reason == NOSTR) {
		FUNC1(FUNC4(HOST), "", acu->acu_name, "call terminated");
		if (FUNC0(FUNC4(VERBOSE)))
			FUNC2("\r\ndisconnecting...");
	} else
		FUNC1(FUNC4(HOST), "", acu->acu_name, reason);
	(*acu->acu_disconnect)();
}