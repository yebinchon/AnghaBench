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
struct input_file {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct input_file* FUNC0 (struct input_file*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_file*,int /*<<< orphan*/ *,char const*) ; 

struct input_file *
FUNC4(struct input_file *i, const char *filename)
{
	FILE *f;

	f = FUNC2(filename, "r");
	if (f != NULL) {
		FUNC3(i, f, filename);
		return i;
	}
	if (filename[0] == '/')
		return NULL;

	FUNC1();

	return FUNC0(i, filename);
}