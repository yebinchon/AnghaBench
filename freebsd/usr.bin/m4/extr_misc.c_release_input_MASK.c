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
struct input_file {scalar_t__ file; int /*<<< orphan*/  c; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ stdin ; 

void
FUNC3(struct input_file *f)
{
	if (FUNC2(f->file))
		FUNC0(1, "Fatal error reading from %s\n", f->name);
	if (f->file != stdin)
	    FUNC1(f->file);
	f->c = EOF;
	/*
	 * XXX can't free filename, as there might still be
	 * error information pointing to it.
	 */
}