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
struct option {int dummy; } ;

/* Variables and functions */
 int hash_only ; 
 int FUNC0 (struct option const*,char const*,int) ; 

__attribute__((used)) static int FUNC1(const struct option *opt, const char *arg, int unset)
{
	hash_only = 1;
	/* Use full length SHA1 if no argument */
	if (!arg)
		return 0;
	return FUNC0(opt, arg, unset);
}