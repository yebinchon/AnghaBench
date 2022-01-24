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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fte_match_set_lyr_2_4 ; 
 int /*<<< orphan*/  ip_dscp ; 
 int /*<<< orphan*/  ip_ecn ; 

__attribute__((used)) static void FUNC1(void *outer_c, void *outer_v, u8 mask, u8 val)
{
	FUNC0(fte_match_set_lyr_2_4, outer_c, ip_ecn, mask);
	FUNC0(fte_match_set_lyr_2_4, outer_v, ip_ecn, val);
	FUNC0(fte_match_set_lyr_2_4, outer_c, ip_dscp, mask >> 2);
	FUNC0(fte_match_set_lyr_2_4, outer_v, ip_dscp, val >> 2);
}