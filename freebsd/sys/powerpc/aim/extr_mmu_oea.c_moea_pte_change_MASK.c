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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct pte {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pte*,struct pte*) ; 
 int /*<<< orphan*/  FUNC1 (struct pte*,struct pte*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct pte *pt, struct pte *pvo_pt, vm_offset_t va)
{

	/*
	 * Invalidate the PTE
	 */
	FUNC1(pt, pvo_pt, va);
	FUNC0(pt, pvo_pt);
}