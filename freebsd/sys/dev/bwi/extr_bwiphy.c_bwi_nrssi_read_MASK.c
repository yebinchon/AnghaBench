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
typedef  int /*<<< orphan*/  uint16_t ;
struct bwi_mac {int dummy; } ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_PHYR_NRSSI_CTRL ; 
 int /*<<< orphan*/  BWI_PHYR_NRSSI_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int16_t
FUNC2(struct bwi_mac *mac, uint16_t ofs)
{
	FUNC1(mac, BWI_PHYR_NRSSI_CTRL, ofs);
	return (int16_t)FUNC0(mac, BWI_PHYR_NRSSI_DATA);
}