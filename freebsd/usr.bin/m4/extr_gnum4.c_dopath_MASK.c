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
struct path_entry {char* name; struct path_entry* next; } ;
struct input_file {int dummy; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 struct path_entry* first ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_file*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static
struct input_file *
FUNC3(struct input_file *i, const char *filename)
{
	char path[PATH_MAX];
	struct path_entry *pe;
	FILE *f;

	for (pe = first; pe; pe = pe->next) {
		FUNC2(path, sizeof(path), "%s/%s", pe->name, filename);
		if ((f = FUNC0(path, "r")) != NULL) {
			FUNC1(i, f, path);
			return i;
		}
	}
	return NULL;
}