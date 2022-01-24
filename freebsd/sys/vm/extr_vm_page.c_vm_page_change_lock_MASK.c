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
typedef  int /*<<< orphan*/  vm_page_t ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 struct mtx* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(vm_page_t m, struct mtx **mtx)
{
	struct mtx *mtx1;

	mtx1 = FUNC2(m);
	if (*mtx == mtx1)
		return;
	if (*mtx != NULL)
		FUNC1(*mtx);
	*mtx = mtx1;
	FUNC0(mtx1);
}