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
struct tte {int /*<<< orphan*/  tte_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct tte*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  FUNC1 (struct tte*) ; 
 struct tte* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(vm_offset_t va)
{
	struct tte *tp;

	tp = FUNC2(va);
	FUNC0(KTR_PMAP, "pmap_kremove_flags: va=%#lx tp=%p data=%#lx", va, tp,
	    tp->tte_data);
	FUNC1(tp);
}