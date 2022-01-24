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
struct option {struct dir_struct* value; } ;
struct dir_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dir_struct*,char const*) ; 
 int exc_given ; 

__attribute__((used)) static int FUNC2(const struct option *opt,
				     const char *arg, int unset)
{
	struct dir_struct *dir = opt->value;

	FUNC0(unset);

	exc_given = 1;
	FUNC1(dir, arg);

	return 0;
}