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
struct file_name {int /*<<< orphan*/  exists; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  strippath ; 

__attribute__((used)) static void
FUNC2(struct file_name *name, char *str)
{
	char *t, *h;

	/* Skip leading whitespace. */
	while (FUNC1((unsigned char)*str))
		str++;

	/* Remove the file revision number. */
	for (t = str, h = NULL; *t != '\0' && !FUNC1((unsigned char)*t); t++)
		if (*t == '#')
			h = t;
	if (h != NULL)
		*h = '\0';

	name->path = FUNC0(str, &name->exists, strippath);
}