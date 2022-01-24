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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, char *buf,
    size_t buflen)
{

	FUNC2(dev, child, buf, buflen);
	if (FUNC1(child) != -1)  {
		FUNC3(buf, " ", buflen); /* Separate info. */
		FUNC0(dev, child, buf, buflen);
	}

	return (0);
}