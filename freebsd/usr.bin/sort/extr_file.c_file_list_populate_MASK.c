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
 int /*<<< orphan*/  FUNC0 (struct file_list*,char*,int) ; 

void
FUNC1(struct file_list *fl, int argc, char **argv, bool allocate)
{

	if (fl && argv) {
		int i;

		for (i = 0; i < argc; i++)
			FUNC0(fl, argv[i], allocate);
	}
}