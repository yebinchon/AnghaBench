#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; scalar_t__ type; char* comment; int /*<<< orphan*/  catid; } ;

/* Variables and functions */
 char* FMT ; 
 size_t NKWINFO ; 
 scalar_t__ TYPE_NUM ; 
 TYPE_1__* kwinfo ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(char *substring)
{
	size_t	i;

#define	FMT "%-20s %-12s %-7s %-20s\n"

	if (substring == NULL)
		FUNC1("List of available keywords\n\n");
	else
		FUNC1("List of available keywords starting with '%s'\n\n",
		    substring);
	FUNC1(FMT, "Keyword", "Category", "Type", "Comment");
	FUNC1("-------------------- ------------ ------- --------------------\n");
	for (i = 0; i < NKWINFO; i++) {
		if (substring != NULL) {
			if (FUNC3(kwinfo[i].name, substring,
			    FUNC2(substring)) != 0)
				continue;
		}
		FUNC1(FMT,
			kwinfo[i].name,
			FUNC0(kwinfo[i].catid),
			(kwinfo[i].type == TYPE_NUM) ? "number" : "string",
			kwinfo[i].comment);
	}
}