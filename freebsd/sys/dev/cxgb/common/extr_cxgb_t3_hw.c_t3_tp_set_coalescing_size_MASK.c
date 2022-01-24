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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_PARA_REG2 ; 
 int /*<<< orphan*/  A_TP_PARA_REG3 ; 
 int EINVAL ; 
 int F_RXCOALESCEENABLE ; 
 int F_RXCOALESCEPSHEN ; 
 unsigned int MAX_RX_COALESCING_LEN ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(adapter_t *adap, unsigned int size, int psh)
{
	u32 val;

	if (size > MAX_RX_COALESCING_LEN)
		return -EINVAL;

	val = FUNC3(adap, A_TP_PARA_REG3);
	val &= ~(F_RXCOALESCEENABLE | F_RXCOALESCEPSHEN);

	if (size) {
		val |= F_RXCOALESCEENABLE;
		if (psh)
			val |= F_RXCOALESCEPSHEN;
		size = FUNC2(MAX_RX_COALESCING_LEN, size);
		FUNC4(adap, A_TP_PARA_REG2, FUNC1(size) |
			     FUNC0(MAX_RX_COALESCING_LEN));
	}
	FUNC4(adap, A_TP_PARA_REG3, val);
	return 0;
}