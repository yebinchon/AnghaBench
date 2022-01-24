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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *value)
{
	if (!value)
		return 1;
	if (!*value)
		return 0;
	if (!FUNC0(value, "true")
	    || !FUNC0(value, "yes")
	    || !FUNC0(value, "on"))
		return 1;
	if (!FUNC0(value, "false")
	    || !FUNC0(value, "no")
	    || !FUNC0(value, "off"))
		return 0;
	return -1;
}