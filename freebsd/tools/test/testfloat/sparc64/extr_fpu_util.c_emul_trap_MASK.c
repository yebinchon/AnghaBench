#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u_long ;
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {int uf_fsr; unsigned long uf_pc; } ;

/* Variables and functions */
 int FSR_FTT_MASK ; 
 int FSR_FTT_SHIFT ; 
 int FSR_FTT_UNFIN ; 
 scalar_t__* __fpreg ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__ utf ; 

__attribute__((used)) static void
FUNC2(const u_int *insn, u_long mask)
{
	u_int32_t savreg[64];
	int i;

	for (i = 0; i < 64; i++)
	    savreg[i] = __fpreg[i];

	utf.uf_fsr = (utf.uf_fsr & ~FSR_FTT_MASK) |
		(FSR_FTT_UNFIN << FSR_FTT_SHIFT);
	utf.uf_pc = (u_long)insn;
	if (FUNC0(&utf) == 0)
	    __asm("stx %%fsr,%0" : "=m" (utf.uf_fsr));
	
	for (i = 0; i < 64; i++) {
		if (!(mask & (1UL << i)) && savreg[i] != __fpreg[i]) {
			FUNC1(stderr, "### %2d %08lx != %08lx\n",
			    i, savreg[i], __fpreg[i]);
		}
	}
}