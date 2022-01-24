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
typedef  size_t u8 ;
struct ixgbe_dcb_config {int dummy; } ;

/* Variables and functions */
 size_t IXGBE_DCB_MAX_USER_PRIORITY ; 
 size_t FUNC0 (struct ixgbe_dcb_config*,int,size_t) ; 

void FUNC1(struct ixgbe_dcb_config *cfg, int direction,
			      u8 *map)
{
	u8 up;

	for (up = 0; up < IXGBE_DCB_MAX_USER_PRIORITY; up++)
		map[up] = FUNC0(cfg, direction, up);
}