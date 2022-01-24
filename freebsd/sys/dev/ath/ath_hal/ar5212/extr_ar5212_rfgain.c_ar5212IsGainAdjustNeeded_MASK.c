#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ currGain; scalar_t__ loTrig; scalar_t__ hiTrig; } ;
typedef  int HAL_BOOL ;
typedef  TYPE_1__ GAIN_VALUES ;

/* Variables and functions */

__attribute__((used)) static HAL_BOOL
FUNC0(struct ath_hal *ah, const GAIN_VALUES *gv)
{
	return (gv->currGain <= gv->loTrig || gv->currGain >= gv->hiTrig);
}