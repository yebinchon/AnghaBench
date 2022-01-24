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
 int /*<<< orphan*/  A_TP_OUT_CONFIG ; 
 unsigned int S_VLANEXTRACTIONENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

void FUNC1(adapter_t *adapter, unsigned int ports, int on)
{
	FUNC0(adapter, A_TP_OUT_CONFIG,
			 ports << S_VLANEXTRACTIONENABLE,
			 on ? (ports << S_VLANEXTRACTIONENABLE) : 0);
}