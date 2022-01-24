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
struct gpiobus_ivar {int npins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct gpiobus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiobus_ivar*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC3(device_t bus, device_t child, char *buf,
    size_t buflen)
{
	struct gpiobus_ivar *devi;

	devi = FUNC0(child);
	if (devi->npins > 1)
		FUNC2(buf, "pins=", buflen);
	else
		FUNC2(buf, "pin=", buflen);
	FUNC1(devi, buf, buflen);

	return (0);
}