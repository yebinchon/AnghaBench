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
struct TYPE_2__ {scalar_t__ n_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FADDR ; 
 int /*<<< orphan*/  LADDR ; 
 int /*<<< orphan*/  PROTO ; 
 int /*<<< orphan*/  RCVCC ; 
 int /*<<< orphan*/  SNDCC ; 
 int /*<<< orphan*/  STATE ; 
 size_t X_TCB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* namelist ; 
 scalar_t__ use_kvm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wnd ; 

void
FUNC3(void)
{
	if (use_kvm && namelist[X_TCB].n_type == 0)
		return;
	FUNC2(wnd, 0, 0); FUNC1(wnd);
	FUNC0(wnd, 0, LADDR, "Local Address");
	FUNC0(wnd, 0, FADDR, "Foreign Address");
	FUNC0(wnd, 0, PROTO, "Proto");
	FUNC0(wnd, 0, RCVCC, "Recv-Q");
	FUNC0(wnd, 0, SNDCC, "Send-Q");
	FUNC0(wnd, 0, STATE, "(state)");
}