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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(adapter_t *adap, unsigned int addr_reg,
		      unsigned int data_reg, u32 *vals, unsigned int nregs,
		      unsigned int start_idx)
{
	while (nregs--) {
		FUNC1(adap, addr_reg, start_idx);
		*vals++ = FUNC0(adap, data_reg);
		start_idx++;
	}
}