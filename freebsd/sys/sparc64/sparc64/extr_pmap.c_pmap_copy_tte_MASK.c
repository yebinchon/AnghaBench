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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_long ;
struct tte {int tte_data; } ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TD_CV ; 
 int TD_FAKE ; 
 int TD_PV ; 
 int TD_REF ; 
 int TD_SW ; 
 int TD_W ; 
 int /*<<< orphan*/  TS_8K ; 
 int /*<<< orphan*/  FUNC1 (struct tte*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(pmap_t src_pmap, pmap_t dst_pmap, struct tte *tp,
    vm_offset_t va)
{
	vm_page_t m;
	u_long data;

	if ((tp->tte_data & TD_FAKE) != 0)
		return (1);
	if (FUNC3(dst_pmap, va) == NULL) {
		data = tp->tte_data &
		    ~(TD_PV | TD_REF | TD_SW | TD_CV | TD_W);
		m = FUNC0(FUNC1(tp));
		FUNC2(dst_pmap, m, va, TS_8K, data);
	}
	return (1);
}