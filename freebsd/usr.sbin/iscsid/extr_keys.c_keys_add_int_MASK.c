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
struct keys {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct keys*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void
FUNC4(struct keys *keys, const char *name, int value)
{
	char *str;
	int ret;

	ret = FUNC0(&str, "%d", value);
	if (ret <= 0)
		FUNC3(1, "asprintf");

	FUNC2(keys, name, str);
	FUNC1(str);
}