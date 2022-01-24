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
struct file_header {struct file_header* si; int /*<<< orphan*/ * fr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_header*) ; 

__attribute__((used)) static void
FUNC3(struct file_header **fh)
{

	if (fh && *fh) {
		if ((*fh)->fr) {
			FUNC0((*fh)->fr);
			(*fh)->fr = NULL;
		}
		if ((*fh)->si) {
			FUNC2((*fh)->si);
			FUNC1((*fh)->si);
			(*fh)->si = NULL;
		}
		FUNC1(*fh);
		*fh = NULL;
	}
}