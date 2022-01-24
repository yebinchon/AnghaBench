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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  dbdma_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_CONTROL_REG ; 
 int /*<<< orphan*/  DBDMA_REG_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(dbdma_channel_t *chan, uint8_t mask, uint8_t value)
{
	uint32_t control_reg;
	
	control_reg = mask;
	control_reg <<= DBDMA_REG_MASK_SHIFT;
	control_reg |= value;

	FUNC0(chan, CHAN_CONTROL_REG, control_reg);
}