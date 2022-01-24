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
struct credential {int /*<<< orphan*/  username; int /*<<< orphan*/  password; int /*<<< orphan*/  port; int /*<<< orphan*/  protocol; scalar_t__ host; scalar_t__ path; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  user; int /*<<< orphan*/  password; } ;
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 char* FUNC8 (struct credential*) ; 

__attribute__((used)) static int FUNC9(struct credential *c)
{
	char *object = NULL;
	GList *entries;
	GnomeKeyringNetworkPasswordData *password_data;
	GnomeKeyringResult result;

	if (!c->protocol || !(c->host || c->path))
		return EXIT_FAILURE;

	object = FUNC8(c);

	result = FUNC3(
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
		FUNC0("%s", FUNC7(result));
		return EXIT_FAILURE;
	}

	/* pick the first one from the list */
	password_data = (GnomeKeyringNetworkPasswordData *)entries->data;

	FUNC4(c->password);
	c->password = FUNC5(password_data->password);

	if (!c->username)
		c->username = FUNC2(password_data->user);

	FUNC6(entries);

	return EXIT_SUCCESS;
}