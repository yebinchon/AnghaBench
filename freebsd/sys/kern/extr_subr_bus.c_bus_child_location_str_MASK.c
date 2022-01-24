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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(device_t child, char *buf, size_t buflen)
{
	device_t parent;

	parent = FUNC1(child);
	if (parent == NULL) {
		*buf = '\0';
		return (0);
	}
	return (FUNC0(parent, child, buf, buflen));
}