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
typedef  uintptr_t uint32_t ;
struct trapframe {int srr1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct trapframe*) ; 
 uintptr_t FUNC1 (struct trapframe*) ; 
 int PSL_SF ; 
 uintptr_t FUNC2 (uintptr_t*) ; 
 uintptr_t FUNC3 (uintptr_t*) ; 

int
FUNC4(uintptr_t *cc, int maxsamples,
    struct trapframe *tf)
{
	uintptr_t *osp, *sp;
	int frames = 0;

	cc[frames++] = FUNC1(tf);
	sp = (uintptr_t *)FUNC0(tf);
	osp = NULL;

	for (; frames < maxsamples; frames++) {
		if (sp <= osp)
			break;
		osp = sp;
#ifdef __powerpc64__
		/* Check if 32-bit mode. */
		if (!(tf->srr1 & PSL_SF)) {
			cc[frames] = fuword32((uint32_t *)sp + 1);
			sp = (uintptr_t *)(uintptr_t)fuword32(sp);
		} else {
			cc[frames] = fuword(sp + 2);
			sp = (uintptr_t *)fuword(sp);
		}
#else
		cc[frames] = FUNC3((uint32_t *)sp + 1);
		sp = (uintptr_t *)FUNC3(sp);
#endif
	}

	return (frames);
}