#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct credential {int /*<<< orphan*/  port; int /*<<< orphan*/  protocol; int /*<<< orphan*/  host; int /*<<< orphan*/  username; int /*<<< orphan*/  path; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  item_id; int /*<<< orphan*/  keyring; } ;
typedef  scalar_t__ GnomeKeyringResult ;
typedef  TYPE_1__ GnomeKeyringNetworkPasswordData ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ GNOME_KEYRING_RESULT_CANCELLED ; 
 scalar_t__ GNOME_KEYRING_RESULT_NO_MATCH ; 
 scalar_t__ GNOME_KEYRING_RESULT_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 char* FUNC6 (struct credential*) ; 

__attribute__((used)) static int FUNC7(struct credential *c)
{
	char *object = NULL;
	GList *entries;
	GnomeKeyringNetworkPasswordData *password_data;
	GnomeKeyringResult result;

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

	object = FUNC6(c);

	result = FUNC2(
				c->username,
				NULL /* domain */,
				c->host,
				object,
				c->protocol,
				NULL /* authtype */,
				c->port,
				&entries);

	FUNC1(object);

	if (result == GNOME_KEYRING_RESULT_NO_MATCH)
		return EXIT_SUCCESS;

	if (result == GNOME_KEYRING_RESULT_CANCELLED)
		return EXIT_SUCCESS;

	if (result != GNOME_KEYRING_RESULT_OK) {
		FUNC0("%s", FUNC5(result));
		return EXIT_FAILURE;
	}

	/* pick the first one from the list (delete all matches?) */
	password_data = (GnomeKeyringNetworkPasswordData *)entries->data;

	result = FUNC3(
		password_data->keyring, password_data->item_id);

	FUNC4(entries);

	if (result != GNOME_KEYRING_RESULT_OK) {
		FUNC0("%s", FUNC5(result));
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}