#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* assignment; struct TYPE_8__* next; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ enumval_list ;
struct TYPE_6__ {TYPE_3__* vals; } ;
struct TYPE_7__ {TYPE_1__ en; } ;
struct TYPE_9__ {char* def_name; TYPE_2__ def; } ;
typedef  TYPE_4__ definition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 

__attribute__((used)) static void
FUNC1(definition *def)
{
	const char *name = def->def_name;
	enumval_list *l;
	const char *last = NULL;
	int count = 0;

	FUNC0(fout, "enum %s {\n", name);
	for (l = def->def.en.vals; l != NULL; l = l->next) {
		FUNC0(fout, "\t%s", l->name);
		if (l->assignment) {
			FUNC0(fout, " = %s", l->assignment);
			last = l->assignment;
			count = 1;
		} else {
			if (last == NULL) {
				FUNC0(fout, " = %d", count++);
			} else {
				FUNC0(fout, " = %s + %d", last, count++);
			}
		}
		if (l->next)
			FUNC0(fout, ",\n");
		else
			FUNC0(fout, "\n");
	}
	FUNC0(fout, "};\n");
	FUNC0(fout, "typedef enum %s %s;\n", name, name);
}