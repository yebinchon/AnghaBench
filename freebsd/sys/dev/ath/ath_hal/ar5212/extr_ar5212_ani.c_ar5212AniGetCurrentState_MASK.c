#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath_hal {int dummy; } ;
struct ar5212AniState {int dummy; } ;
struct TYPE_2__ {struct ar5212AniState* ah_curani; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 

struct ar5212AniState *
FUNC1(struct ath_hal *ah)
{
	return FUNC0(ah)->ah_curani;
}