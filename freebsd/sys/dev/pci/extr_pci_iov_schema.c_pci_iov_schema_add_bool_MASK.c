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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int IOV_SCHEMA_HASDEFAULT ; 
 int /*<<< orphan*/  NV_FLAG_IGNORE_CASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void
FUNC6(nvlist_t *schema, const char *name, uint32_t flags,
    int defaultVal)
{
	nvlist_t *entry;

	entry = FUNC1(NV_FLAG_IGNORE_CASE);
	if (entry == NULL) {
		FUNC3(schema, ENOMEM);
		return;
	}

	FUNC5(entry, "bool");
	if (flags & IOV_SCHEMA_HASDEFAULT)
		FUNC0(entry, "default", defaultVal);
	FUNC4(entry, flags);

	FUNC2(schema, name, entry);
}