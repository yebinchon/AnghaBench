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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int v_access; } ;

/* Variables and functions */
 size_t BEAUTIFY ; 
 int CHANGED ; 
 size_t HARDWAREFLOW ; 
 scalar_t__ HD ; 
 size_t LECHO ; 
 size_t LINEDISC ; 
 int /*<<< orphan*/  NOSTR ; 
 size_t PARITY ; 
 size_t RECORD ; 
 size_t SCRIPT ; 
 int /*<<< orphan*/  SIGSYS ; 
 size_t TAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  tipout_pid ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_1__* vtable ; 

void
FUNC10(int c)
{
	char	buf[256];

	if (FUNC4("[set] ", buf, sizeof(buf)))
		return;
	FUNC9(buf);
	if (vtable[BEAUTIFY].v_access&CHANGED) {
		vtable[BEAUTIFY].v_access &= ~CHANGED;
		FUNC2(tipout_pid, SIGSYS);
	}
	if (vtable[SCRIPT].v_access&CHANGED) {
		vtable[SCRIPT].v_access &= ~CHANGED;
		FUNC6();
		/*
		 * So that "set record=blah script" doesn't
		 *  cause two transactions to occur.
		 */
		if (vtable[RECORD].v_access&CHANGED)
			vtable[RECORD].v_access &= ~CHANGED;
	}
	if (vtable[RECORD].v_access&CHANGED) {
		vtable[RECORD].v_access &= ~CHANGED;
		if (FUNC0(FUNC8(SCRIPT)))
			FUNC6();
	}
	if (vtable[TAND].v_access&CHANGED) {
		vtable[TAND].v_access &= ~CHANGED;
		if (FUNC0(FUNC8(TAND)))
			FUNC7("on");
		else
			FUNC7("off");
	}
	if (vtable[LECHO].v_access&CHANGED) {
		vtable[LECHO].v_access &= ~CHANGED;
		HD = FUNC0(FUNC8(LECHO));
	}
	if (vtable[PARITY].v_access&CHANGED) {
		vtable[PARITY].v_access &= ~CHANGED;
		FUNC5(NOSTR);
	}
	if (vtable[HARDWAREFLOW].v_access&CHANGED) {
		vtable[HARDWAREFLOW].v_access &= ~CHANGED;
		if (FUNC0(FUNC8(HARDWAREFLOW)))
			FUNC1("on");
		else
			FUNC1("off");
	}
	if (vtable[LINEDISC].v_access&CHANGED) {
		vtable[LINEDISC].v_access &= ~CHANGED;
		FUNC3(NOSTR);
	}
}