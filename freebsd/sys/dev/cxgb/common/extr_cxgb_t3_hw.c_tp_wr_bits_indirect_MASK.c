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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_PIO_ADDR ; 
 int /*<<< orphan*/  A_TP_PIO_DATA ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(adapter_t *adap, unsigned int addr,
				unsigned int mask, unsigned int val)
{
	FUNC1(adap, A_TP_PIO_ADDR, addr);
	val |= FUNC0(adap, A_TP_PIO_DATA) & ~mask;
	FUNC1(adap, A_TP_PIO_DATA, val);
}