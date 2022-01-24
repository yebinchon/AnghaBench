#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n_accs; TYPE_1__* acc; } ;
typedef  TYPE_2__ accentmap_t ;
struct TYPE_4__ {int accchar; int** map; } ;

/* Variables and functions */
 int NUM_ACCENTCHARS ; 
 int NUM_DEADKEYS ; 
 char** acc_names ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(char *name, accentmap_t *accentmap)
{
	int i, j;
	int c;

	FUNC2("static accentmap_t accentmap_%s = { %d",
		name, accentmap->n_accs); 
	if (accentmap->n_accs <= 0) {
		FUNC2(" };\n\n");
		return;
	}
	FUNC2(", {\n");
	for (i = 0; i < NUM_DEADKEYS; i++) {
		FUNC2("    /* %s=%d */\n    {", acc_names[i], i);
		c = accentmap->acc[i].accchar;
		if (c == '\'')
			FUNC2(" '\\'', {");
		else if (c == '\\')
			FUNC2(" '\\\\', {");
		else if (FUNC0(c) && FUNC1(c))
			FUNC2("  '%c', {", c);
		else if (c == 0) {
			FUNC2(" 0x00 }, \n");
			continue;
		} else
			FUNC2(" 0x%02x, {", c);
		for (j = 0; j < NUM_ACCENTCHARS; j++) {
			c = accentmap->acc[i].map[j][0]; 
			if (c == 0)
				break;
			if ((j > 0) && ((j % 4) == 0))
				FUNC2("\n\t     ");
			if (FUNC0(c) && FUNC1(c))
				FUNC2(" {  '%c',", c);
			else
				FUNC2(" { 0x%02x,", c); 
			FUNC2("0x%02x },", accentmap->acc[i].map[j][1]);
		}
		FUNC2(" }, },\n");
	}
	FUNC2("} };\n\n");
}