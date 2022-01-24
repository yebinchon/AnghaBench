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
struct config_options {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,size_t) ; 
 int FUNC1 (struct config_options const*,char const*,size_t,int) ; 
 scalar_t__ FUNC2 (char const*,size_t,char*,char const**,size_t*) ; 

__attribute__((used)) static int FUNC3(const struct config_options *opts,
				     const char *cond, size_t cond_len)
{

	if (FUNC2(cond, cond_len, "gitdir:", &cond, &cond_len))
		return FUNC1(opts, cond, cond_len, 0);
	else if (FUNC2(cond, cond_len, "gitdir/i:", &cond, &cond_len))
		return FUNC1(opts, cond, cond_len, 1);
	else if (FUNC2(cond, cond_len, "onbranch:", &cond, &cond_len))
		return FUNC0(cond, cond_len);

	/* unknown conditionals are always false */
	return 0;
}