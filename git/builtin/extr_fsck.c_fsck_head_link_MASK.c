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
 int /*<<< orphan*/  ERROR_REFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  errors_found ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC3 (struct object_id*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC7(const char *head_ref_name,
			  const char **head_points_at,
			  struct object_id *head_oid)
{
	int null_is_error = 0;

	if (verbose)
		FUNC2(stderr, FUNC0("Checking %s link"), head_ref_name);

	*head_points_at = FUNC4(head_ref_name, 0, head_oid, NULL);
	if (!*head_points_at) {
		errors_found |= ERROR_REFS;
		return FUNC1(FUNC0("invalid %s"), head_ref_name);
	}
	if (!FUNC6(*head_points_at, head_ref_name))
		/* detached HEAD */
		null_is_error = 1;
	else if (!FUNC5(*head_points_at, "refs/heads/")) {
		errors_found |= ERROR_REFS;
		return FUNC1(FUNC0("%s points to something strange (%s)"),
			     head_ref_name, *head_points_at);
	}
	if (FUNC3(head_oid)) {
		if (null_is_error) {
			errors_found |= ERROR_REFS;
			return FUNC1(FUNC0("%s: detached HEAD points at nothing"),
				     head_ref_name);
		}
		FUNC2(stderr,
			   FUNC0("notice: %s points to an unborn branch (%s)"),
			   head_ref_name, *head_points_at + 11);
	}
	return 0;
}