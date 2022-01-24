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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const char *name = FUNC1(dev);

	if (FUNC3(name, "rtas") != 0)
		return (ENXIO);
	if (!FUNC2())
		return (ENXIO);

	FUNC0(dev, "Run-Time Abstraction Services");
	return (0);
}