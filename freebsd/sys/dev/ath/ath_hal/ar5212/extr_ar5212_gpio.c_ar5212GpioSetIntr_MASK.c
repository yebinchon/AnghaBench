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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_maskReg; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_GPIOCR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int AR_GPIOCR_INT_ENA ; 
 int AR_GPIOCR_INT_MASK ; 
 int AR_GPIOCR_INT_SEL ; 
 int AR_GPIOCR_INT_SELH ; 
 int AR_GPIOCR_INT_SELL ; 
 int HAL_INT_GPIO ; 
 int FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int) ; 

void
FUNC7(struct ath_hal *ah, u_int gpio, uint32_t ilevel)
{
	uint32_t val;

	/* XXX bounds check gpio */
	val = FUNC4(ah, AR_GPIOCR);
	val &= ~(FUNC1(gpio) |
		 AR_GPIOCR_INT_MASK | AR_GPIOCR_INT_ENA | AR_GPIOCR_INT_SEL);
	val |= FUNC2(gpio) | FUNC3(gpio) | AR_GPIOCR_INT_ENA;
	if (ilevel)
		val |= AR_GPIOCR_INT_SELH;	/* interrupt on pin high */
	else
		val |= AR_GPIOCR_INT_SELL;	/* interrupt on pin low */

	/* Don't need to change anything for low level interrupt. */
	FUNC5(ah, AR_GPIOCR, val);

	/* Change the interrupt mask. */
	(void) FUNC6(ah, FUNC0(ah)->ah_maskReg | HAL_INT_GPIO);
}