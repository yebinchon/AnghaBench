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
FUNC2(struct file_header **fh, size_t indx, size_t size)
{
	size_t left_child_index;
	size_t right_child_index;

	left_child_index = indx + indx + 1;
	right_child_index = left_child_index + 1;

	if (left_child_index < size) {
		size_t min_child_index;

		min_child_index = left_child_index;

		if ((right_child_index < size) &&
		    (FUNC0(fh[left_child_index],
		    fh[right_child_index]) > 0))
			min_child_index = right_child_index;
		if (FUNC0(fh[indx], fh[min_child_index]) > 0) {
			FUNC1(fh, indx, min_child_index);
			FUNC2(fh, min_child_index, size);
		}
	}
}