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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int exc_given ; 
 int /*<<< orphan*/  FUNC2 (struct dir_struct*) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
					 const char *arg, int unset)
{
	struct dir_struct *dir = opt->value;

	FUNC1(unset);
	FUNC0(arg);

	exc_given = 1;
	FUNC2(dir);

	return 0;
}