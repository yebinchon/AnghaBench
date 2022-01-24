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
struct input_file {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  lquote ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rquote ; 

void
FUNC1(struct input_file *f)
{
	FUNC0(rquote);
	FUNC0(f->name);
	FUNC0(lquote);
}