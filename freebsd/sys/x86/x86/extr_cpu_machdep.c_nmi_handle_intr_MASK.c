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
typedef  int /*<<< orphan*/  u_int ;
struct trapframe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct trapframe*) ; 
 scalar_t__ nmi_is_broadcast ; 

void
FUNC3(u_int type, struct trapframe *frame)
{

#ifdef SMP
	if (nmi_is_broadcast) {
		nmi_call_kdb_smp(type, frame);
		return;
	}
#endif
	FUNC1(FUNC0(cpuid), type, frame);
}