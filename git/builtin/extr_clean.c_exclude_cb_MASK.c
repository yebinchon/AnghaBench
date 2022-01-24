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
struct option {struct string_list* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,char const*) ; 

__attribute__((used)) static int FUNC2(const struct option *opt, const char *arg, int unset)
{
	struct string_list *exclude_list = opt->value;
	FUNC0(unset);
	FUNC1(exclude_list, arg);
	return 0;
}