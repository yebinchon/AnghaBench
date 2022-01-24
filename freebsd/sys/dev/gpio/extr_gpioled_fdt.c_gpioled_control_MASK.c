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
struct gpioled {scalar_t__ pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC1(void *priv, int onoff)
{
	struct gpioled *led;

	led = (struct gpioled *)priv;
	if (led->pin)
		FUNC0(led->pin, onoff);
}