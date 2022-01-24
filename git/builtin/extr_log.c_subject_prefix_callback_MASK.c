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
struct rev_info {char const* subject_prefix; } ;
struct option {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int subject_prefix ; 

__attribute__((used)) static int FUNC1(const struct option *opt, const char *arg,
			    int unset)
{
	FUNC0(unset);
	subject_prefix = 1;
	((struct rev_info *)opt->value)->subject_prefix = arg;
	return 0;
}