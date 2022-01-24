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
typedef  void* device_t ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,int) ; 
 int FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 

__attribute__((used)) static void
FUNC3(void *cookie)
{
	device_t dev = cookie;
	uint8_t val;

	val = FUNC1(dev, 0x71);
	if (bootverbose)
		FUNC0(dev, "got interrupt, wdt status = %d\n", val & 1);
	FUNC2(dev, 0x71, val & ~((uint8_t)0x01));
}