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
typedef  int uint64_t ;
typedef  int u_int ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath_hal*,int) ; 

u_int
FUNC1(struct ath_hal *ah, u_int clks)
{
	uint64_t psec;

	psec = FUNC0(ah, clks);
	return (psec / 1000000);
}