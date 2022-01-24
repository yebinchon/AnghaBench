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
typedef  int uint16_t ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct bwn_mac*) ; 
 int FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC3(struct bwn_mac *mac, uint16_t offset)
{
	if (!offset)
		offset = FUNC1(mac) ? 0x159 : 0x154;
	return FUNC2(mac, FUNC0(7, offset)) & 0x7;
}