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
struct option {int* value; } ;
typedef  enum rebase_type { ____Placeholder_rebase_type } rebase_type ;

/* Variables and functions */
 int REBASE_FALSE ; 
 int REBASE_INVALID ; 
 int REBASE_TRUE ; 
 int FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct option *opt, const char *arg, int unset)
{
	enum rebase_type *value = opt->value;

	if (arg)
		*value = FUNC0("--rebase", arg, 0);
	else
		*value = unset ? REBASE_FALSE : REBASE_TRUE;
	return *value == REBASE_INVALID ? -1 : 0;
}