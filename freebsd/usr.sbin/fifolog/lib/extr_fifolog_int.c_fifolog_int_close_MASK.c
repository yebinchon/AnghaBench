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
struct fifolog_file {scalar_t__ fd; int /*<<< orphan*/ * recbuf; int /*<<< orphan*/ * zs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct fifolog_file **ff)
{
	struct fifolog_file *f;

	f = *ff;
	*ff = NULL;
	if (f == NULL)
		return;

	if (f->fd >= 0)
		(void)FUNC0(f->fd);
	if (f->zs != NULL)
		FUNC1(f->zs);
	if (f->recbuf != NULL)
		FUNC1(f->recbuf);
}