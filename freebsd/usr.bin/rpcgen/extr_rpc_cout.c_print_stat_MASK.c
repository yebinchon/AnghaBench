#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  relation ;
struct TYPE_3__ {char* prefix; char* type; char* array_max; int /*<<< orphan*/  name; int /*<<< orphan*/  rel; } ;
typedef  TYPE_1__ declaration ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,char const*,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int indent, declaration *dec)
{
	const char *prefix = dec->prefix;
	const char *type = dec->type;
	const char *amax = dec->array_max;
	relation rel = dec->rel;
	char name[256];

	if (FUNC0(type, rel)) {
		FUNC2(name, "objp->%s", dec->name);
	} else {
		FUNC2(name, "&objp->%s", dec->name);
	}
	FUNC1(indent, prefix, type, rel, amax, name, dec->name);
}