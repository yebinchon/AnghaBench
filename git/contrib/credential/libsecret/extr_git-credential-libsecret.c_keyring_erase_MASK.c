#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct credential {int /*<<< orphan*/  username; int /*<<< orphan*/  path; int /*<<< orphan*/  host; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SECRET_SCHEMA_COMPAT_NETWORK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct credential*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 

__attribute__((used)) static int FUNC5(struct credential *c)
{
	GHashTable *attributes = NULL;
	GError *error = NULL;

	/*
	 * Sanity check that we actually have something to match
	 * against. The input we get is a restrictive pattern,
	 * so technically a blank credential means "erase everything".
	 * But it is too easy to accidentally send this, since it is equivalent
	 * to empty input. So explicitly disallow it, and require that the
	 * pattern have some actual content to match.
	 */
	if (!c->protocol && !c->host && !c->path && !c->username)
		return EXIT_FAILURE;

	attributes = FUNC3(c);
	FUNC4(SECRET_SCHEMA_COMPAT_NETWORK,
				    attributes,
				    NULL,
				    &error);
	FUNC2(attributes);

	if (error != NULL) {
		FUNC0("erase failed: %s", error->message);
		FUNC1(error);
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}