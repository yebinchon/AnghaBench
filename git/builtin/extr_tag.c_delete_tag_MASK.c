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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,struct object_id const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *name, const char *ref,
		      const struct object_id *oid, const void *cb_data)
{
	if (FUNC1(NULL, ref, oid, 0))
		return 1;
	FUNC3(FUNC0("Deleted tag '%s' (was %s)\n"), name,
	       FUNC2(oid, DEFAULT_ABBREV));
	return 0;
}