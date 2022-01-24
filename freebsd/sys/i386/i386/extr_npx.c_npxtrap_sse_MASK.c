#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_13__ {TYPE_4__* td_pcb; } ;
struct TYPE_12__ {TYPE_3__* pcb_save; } ;
struct TYPE_9__ {int en_mxcsr; } ;
struct TYPE_10__ {TYPE_1__ sv_env; } ;
struct TYPE_11__ {TYPE_2__ sv_xmm; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_5__* curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int* fpetable ; 
 int hw_float ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

int
FUNC6(void)
{
	u_int mxcsr;

	if (!hw_float) {
		FUNC4(
	"npxtrap_sse: fpcurthread = %p, curthread = %p, hw_float = %d\n",
		       FUNC0(fpcurthread), curthread, hw_float);
		FUNC3("npxtrap from nowhere");
	}
	FUNC1();
	if (FUNC0(fpcurthread) != curthread)
		mxcsr = curthread->td_pcb->pcb_save->sv_xmm.sv_env.en_mxcsr;
	else
		FUNC5(&mxcsr);
	FUNC2();
	return (fpetable[(mxcsr & (~mxcsr >> 7)) & 0x3f]);
}