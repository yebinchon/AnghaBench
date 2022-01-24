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
struct file_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct file_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  f_next ; 
 int /*<<< orphan*/  ftab ; 

__attribute__((used)) static struct file_list *
FUNC3(void)
{
	struct file_list *fp;

	fp = (struct file_list *) FUNC1(1, sizeof *fp);
	if (fp == NULL)
		FUNC2(EXIT_FAILURE, "calloc");
	FUNC0(&ftab, fp, f_next);
	return (fp);
}