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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MPS_CMN_CTL ; 
 scalar_t__ CHELSIO_T5 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct adapter *adap, int idx)
{
	u32 n = FUNC0(FUNC2(adap, A_MPS_CMN_CTL));

	if (n == 0)
		return idx == 0 ? 0xf : 0;
	if (n == 1 && FUNC1(adap) <= CHELSIO_T5)
		return idx < 2 ? (3 << (2 * idx)) : 0;
	return 1 << idx;
}