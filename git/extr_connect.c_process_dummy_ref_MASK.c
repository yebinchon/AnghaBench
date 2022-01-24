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
 int /*<<< orphan*/  null_oid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *line)
{
	struct object_id oid;
	const char *name;

	if (FUNC1(line, &oid, &name))
		return 0;
	if (*name != ' ')
		return 0;
	name++;

	return FUNC0(&null_oid, &oid) && !FUNC2(name, "capabilities^{}");
}