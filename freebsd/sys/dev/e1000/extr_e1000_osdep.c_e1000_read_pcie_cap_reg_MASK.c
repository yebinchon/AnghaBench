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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct e1000_osdep {int /*<<< orphan*/  dev; } ;
struct e1000_hw {scalar_t__ back; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int32_t
FUNC2(struct e1000_hw *hw, u32 reg, u16 *value)
{
	device_t dev = ((struct e1000_osdep *)hw->back)->dev;
	u32	offset;

	FUNC0(dev, PCIY_EXPRESS, &offset);
	*value = FUNC1(dev, offset + reg, 2);
	return (E1000_SUCCESS);
}