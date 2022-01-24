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
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct oid_array*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,char const**) ; 

__attribute__((used)) static int FUNC6(const char *line, int len,
			   struct oid_array *shallow_points)
{
	const char *arg;
	struct object_id old_oid;

	if (!FUNC5(line, "shallow ", &arg))
		return 0;

	if (FUNC3(arg, &old_oid))
		FUNC2(FUNC0("protocol error: expected shallow sha-1, got '%s'"), arg);
	if (!shallow_points)
		FUNC2(FUNC0("repository on the other end cannot be shallow"));
	FUNC4(shallow_points, &old_oid);
	FUNC1(line, len);
	return 1;
}