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
typedef  int /*<<< orphan*/  u_int ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_TIME_OUT ; 
 int /*<<< orphan*/  AR_TIME_OUT_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 

u_int
FUNC3(struct ath_hal *ah)
{
	u_int clks = FUNC0(FUNC1(ah, AR_TIME_OUT), AR_TIME_OUT_ACK);
	return FUNC2(ah, clks);	/* convert from system clocks */
}