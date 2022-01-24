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
struct config_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_set*,char const*,char const**) ; 
 int FUNC1 (char const*) ; 

int FUNC2(struct config_set *cs, const char *key, int *dest)
{
	const char *value;
	if (!FUNC0(cs, key, &value)) {
		*dest = FUNC1(value);
		if (*dest == -1)
			return -1;
		return 0;
	} else
		return 1;
}