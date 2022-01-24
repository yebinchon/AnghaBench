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
struct file_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file_header*,struct file_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct file_header**,size_t,size_t) ; 

__attribute__((used)) static void
FUNC2(struct file_header **fh, size_t indx)
{

	if (indx > 0) {
		size_t parent_index;

		parent_index = (indx - 1) >> 1;

		if (FUNC0(fh[indx], fh[parent_index]) < 0) {
			/* swap child and parent and continue */
			FUNC1(fh, indx, parent_index);
			FUNC2(fh, parent_index);
		}
	}
}