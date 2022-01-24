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
struct tte {int /*<<< orphan*/  tte_data; } ;
struct pmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TD_PV ; 
 int TD_SW ; 
 int TD_W ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct pmap *pm, struct pmap *pm2, struct tte *tp,
    vm_offset_t va)
{
	u_long data;
	vm_page_t m;

	FUNC1(pm, MA_OWNED);
	data = FUNC3(&tp->tte_data, TD_SW | TD_W);
	if ((data & (TD_PV | TD_W)) == (TD_PV | TD_W)) {
		m = FUNC0(FUNC2(data));
		FUNC4(m);
	}
	return (1);
}