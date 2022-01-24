#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_consumer {TYPE_2__* provider; } ;
struct g_class {char* name; } ;
typedef  int /*<<< orphan*/  ident ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_class* class; } ;

/* Variables and functions */
 int DISK_IDENT_SIZE ; 
 int /*<<< orphan*/ ** classes_pass ; 
 scalar_t__ FUNC0 (char*,struct g_consumer*,int*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(struct g_consumer *cp, char *label, size_t size)
{
	struct g_class *cls;
	char ident[DISK_IDENT_SIZE];
	int ident_len, found, i;

	FUNC1();
	label[0] = '\0';

	cls = cp->provider->geom->class;

	/* 
	 * Get the GEOM::ident string, and construct a label in the format
	 * "CLASS_NAME-ident"
	 */
	ident_len = sizeof(ident);
	if (FUNC0("GEOM::ident", cp, &ident_len, ident) == 0) {
		if (ident_len == 0 || ident[0] == '\0')
			return;
		for (i = 0, found = 0; classes_pass[i] != NULL; i++)
			if (FUNC3(classes_pass[i], cls->name) == 0) {
				found = 1;
				break;
			}
		if (!found)
			return;
		/*
		 * We can safely ignore the result of snprintf(): the label
		 * will simply be truncated, which at most is only annoying.
		 */
		(void)FUNC2(label, size, "%s-%s", cls->name, ident);
	}
}