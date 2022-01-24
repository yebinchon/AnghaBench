#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct credential {void* password; void* username; scalar_t__ path; scalar_t__ host; int /*<<< orphan*/  protocol; } ;
struct TYPE_9__ {int /*<<< orphan*/  message; } ;
struct TYPE_8__ {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  SecretValue ;
typedef  int /*<<< orphan*/  SecretService ;
typedef  int /*<<< orphan*/  SecretItem ;
typedef  TYPE_1__ GList ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  TYPE_2__ GError ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SECRET_SCHEMA_COMPAT_NETWORK ; 
 int SECRET_SEARCH_LOAD_SECRETS ; 
 int SECRET_SEARCH_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_object_unref ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (struct credential*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_2__**) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct credential *c)
{
	SecretService *service = NULL;
	GHashTable *attributes = NULL;
	GError *error = NULL;
	GList *items = NULL;

	if (!c->protocol || !(c->host || c->path))
		return EXIT_FAILURE;

	service = FUNC10(0, NULL, &error);
	if (error != NULL) {
		FUNC0("could not connect to Secret Service: %s", error->message);
		FUNC1(error);
		return EXIT_FAILURE;
	}

	attributes = FUNC7(c);
	items = FUNC11(service,
					   SECRET_SCHEMA_COMPAT_NETWORK,
					   attributes,
					   SECRET_SEARCH_LOAD_SECRETS | SECRET_SEARCH_UNLOCK,
					   NULL,
					   &error);
	FUNC4(attributes);
	if (error != NULL) {
		FUNC0("lookup failed: %s", error->message);
		FUNC1(error);
		return EXIT_FAILURE;
	}

	if (items != NULL) {
		SecretItem *item;
		SecretValue *secret;
		const char *s;

		item = items->data;
		secret = FUNC9(item);
		attributes = FUNC8(item);

		s = FUNC3(attributes, "user");
		if (s) {
			FUNC2(c->username);
			c->username = FUNC6(s);
		}

		s = FUNC12(secret);
		if (s) {
			FUNC2(c->password);
			c->password = FUNC6(s);
		}

		FUNC4(attributes);
		FUNC13(secret);
		FUNC5(items, g_object_unref);
	}

	return EXIT_SUCCESS;
}