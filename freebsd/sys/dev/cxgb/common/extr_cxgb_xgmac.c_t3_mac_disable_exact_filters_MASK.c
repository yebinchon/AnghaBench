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
struct cmac {unsigned int offset; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 unsigned int A_XGM_RX_EXACT_MATCH_LOW_1 ; 
 unsigned int EXACT_ADDR_FILTERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

void FUNC2(struct cmac *mac)
{
	unsigned int i, reg = mac->offset + A_XGM_RX_EXACT_MATCH_LOW_1;

	for (i = 0; i < EXACT_ADDR_FILTERS; i++, reg += 8) {
		u32 v = FUNC0(mac->adapter, reg);
		FUNC1(mac->adapter, reg, v);
	}
	FUNC0(mac->adapter, A_XGM_RX_EXACT_MATCH_LOW_1); /* flush */
}