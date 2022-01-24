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
struct string_list {int dummy; } ;
struct option {scalar_t__ defval; scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct option *opt,
				 const char *arg, int unset)
{
	if (unset)
		FUNC1((struct string_list *)opt->value, 0);
	else if (arg)
		FUNC0((struct string_list *)opt->value, arg);
	else
		FUNC0((struct string_list *)opt->value,
				   (const char *)opt->defval);

	return 0;
}