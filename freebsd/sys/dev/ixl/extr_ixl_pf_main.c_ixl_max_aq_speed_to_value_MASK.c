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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int I40E_LINK_SPEED_100MB ; 
 int I40E_LINK_SPEED_10GB ; 
 int I40E_LINK_SPEED_1GB ; 
 int I40E_LINK_SPEED_20GB ; 
 int I40E_LINK_SPEED_25GB ; 
 int I40E_LINK_SPEED_40GB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

u64
FUNC2(u8 link_speeds)
{
	if (link_speeds & I40E_LINK_SPEED_40GB)
		return FUNC0(40);
	if (link_speeds & I40E_LINK_SPEED_25GB)
		return FUNC0(25);
	if (link_speeds & I40E_LINK_SPEED_20GB)
		return FUNC0(20);
	if (link_speeds & I40E_LINK_SPEED_10GB)
		return FUNC0(10);
	if (link_speeds & I40E_LINK_SPEED_1GB)
		return FUNC0(1);
	if (link_speeds & I40E_LINK_SPEED_100MB)
		return FUNC1(100);
	else
		/* Minimum supported link speed */
		return FUNC1(100);
}