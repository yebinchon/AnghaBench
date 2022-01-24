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
struct credential {int /*<<< orphan*/  password; int /*<<< orphan*/  username; scalar_t__ path; scalar_t__ host; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SECRET_SCHEMA_COMPAT_NETWORK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct credential*) ; 
 char* FUNC5 (struct credential*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 

__attribute__((used)) static int FUNC7(struct credential *c)
{
	char *label = NULL;
	GHashTable *attributes = NULL;
	GError *error = NULL;

	/*
	 * Sanity check that what we are storing is actually sensible.
	 * In particular, we can't make a URL without a protocol field.
	 * Without either a host or pathname (depending on the scheme),
	 * we have no primary key. And without a username and password,
	 * we are not actually storing a credential.
	 */
	if (!c->protocol || !(c->host || c->path) ||
	    !c->username || !c->password)
		return EXIT_FAILURE;

	label = FUNC5(c);
	attributes = FUNC4(c);
	FUNC6(SECRET_SCHEMA_COMPAT_NETWORK,
				    attributes,
				    NULL,
				    label,
				    c->password,
				    NULL,
				    &error);
	FUNC2(label);
	FUNC3(attributes);

	if (error != NULL) {
		FUNC0("store failed: %s", error->message);
		FUNC1(error);
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}