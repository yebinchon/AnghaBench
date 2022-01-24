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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

int
FUNC4(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{

	*buf = '\0';
	if (!FUNC2(child))
		return (0);

	if (FUNC1(child) != NULL) {
		FUNC3(buf, "name=", buflen);
		FUNC3(buf, FUNC1(child), buflen);
	}

	if (FUNC0(child) != NULL) {
		FUNC3(buf, " compat=", buflen);
		FUNC3(buf, FUNC0(child), buflen);
	}

	return (0);
}