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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int AR71XX_GPIO_BASE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int QCA953X_GPIO_COUNT ; 
 int QCA953X_GPIO_REG_OUT_FUNC0 ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3(int gpio, uint8_t func)
{
	uint32_t reg, s;
	uint32_t t;

	if (gpio > QCA953X_GPIO_COUNT)
		return;

	reg = QCA953X_GPIO_REG_OUT_FUNC0 + FUNC2(gpio, 4);
	s = 8 * (gpio % 4);

	/* read-modify-write */
	t = FUNC0(AR71XX_GPIO_BASE + reg);
	t &= ~(0xff << s);
	t |= func << s;
	FUNC1(AR71XX_GPIO_BASE + reg, t);

	/* flush write */
	FUNC0(AR71XX_GPIO_BASE + reg);
}