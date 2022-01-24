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
struct ath_hal {int dummy; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int16_t
FUNC2(struct ath_hal *ah)
{
	int16_t nf;

	nf = (FUNC1(ah, FUNC0(25)) >> 19) & 0x1ff;
	if (nf & 0x100)
		nf = 0 - ((nf ^ 0x1ff) + 1);
	return nf;
}