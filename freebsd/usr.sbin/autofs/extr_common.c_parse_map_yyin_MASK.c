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
struct node {int dummy; } ;

/* Variables and functions */
 int NEWLINE ; 
 char* FUNC0 (char const*) ; 
 int lineno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 struct node* FUNC4 (struct node*,char*,char*,char*,char const*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 () ; 
 char* yytext ; 

__attribute__((used)) static void
FUNC7(struct node *parent, const char *map, const char *executable_key)
{
	char *key = NULL, *options = NULL, *mountpoint = NULL,
	    *options2 = NULL, *location = NULL;
	int ret;
	struct node *node;

	lineno = 1;

	if (executable_key != NULL)
		key = FUNC0(executable_key);

	for (;;) {
		ret = FUNC6();
		if (ret == 0 || ret == NEWLINE) {
			/*
			 * In case of executable map, the key is always
			 * non-NULL, even if the map is empty.  So, make sure
			 * we don't fail empty maps here.
			 */
			if ((key != NULL && executable_key == NULL) ||
			    options != NULL) {
				FUNC2(1, "truncated entry at %s, line %d",
				    map, lineno);
			}
			if (ret == 0 || executable_key != NULL) {
				/*
				 * End of file.
				 */
				break;
			} else {
				key = options = NULL;
				continue;
			}
		}
		if (key == NULL) {
			key = FUNC0(yytext);
			if (key[0] == '+') {
				FUNC4(parent, key, NULL, NULL, map, lineno);
				key = options = NULL;
				continue;
			}
			continue;
		} else if (yytext[0] == '-') {
			if (options != NULL) {
				FUNC2(1, "duplicated options at %s, line %d",
				    map, lineno);
			}
			/*
			 * +1 to skip leading "-".
			 */
			options = FUNC0(yytext + 1);
			continue;
		}

		/*
		 * We cannot properly handle a situation where the map key
		 * is "/".  Ignore such entries.
		 *
		 * XXX: According to Piete Brooks, Linux automounter uses
		 *	"/" as a wildcard character in LDAP maps.  Perhaps
		 *	we should work around this braindamage by substituting
		 *	"*" for "/"?
		 */
		if (FUNC5(key, "/") == 0) {
			FUNC3("nonsensical map key \"/\" at %s, line %d; "
			    "ignoring map entry ", map, lineno);

			/*
			 * Skip the rest of the entry.
			 */
			do {
				ret = FUNC6();
			} while (ret != 0 && ret != NEWLINE);

			key = options = NULL;
			continue;
		}

		//log_debugx("adding map node, %s", key);
		node = FUNC4(parent, key, options, NULL, map, lineno);
		key = options = NULL;

		for (;;) {
			if (yytext[0] == '/') {
				if (mountpoint != NULL) {
					FUNC2(1, "duplicated mountpoint "
					    "in %s, line %d", map, lineno);
				}
				if (options2 != NULL || location != NULL) {
					FUNC2(1, "mountpoint out of order "
					    "in %s, line %d", map, lineno);
				}
				mountpoint = FUNC0(yytext);
				goto again;
			}

			if (yytext[0] == '-') {
				if (options2 != NULL) {
					FUNC2(1, "duplicated options "
					    "in %s, line %d", map, lineno);
				}
				if (location != NULL) {
					FUNC2(1, "options out of order "
					    "in %s, line %d", map, lineno);
				}
				options2 = FUNC0(yytext + 1);
				goto again;
			}

			if (location != NULL) {
				FUNC2(1, "too many arguments "
				    "in %s, line %d", map, lineno);
			}

			/*
			 * If location field starts with colon, e.g. ":/dev/cd0",
			 * then strip it.
			 */
			if (yytext[0] == ':') {
				location = FUNC0(yytext + 1);
				if (location[0] == '\0') {
					FUNC2(1, "empty location in %s, "
					    "line %d", map, lineno);
				}
			} else {
				location = FUNC0(yytext);
			}

			if (mountpoint == NULL)
				mountpoint = FUNC0("/");
			if (options2 == NULL)
				options2 = FUNC0("");

#if 0
			log_debugx("adding map node, %s %s %s",
			    mountpoint, options2, location);
#endif
			FUNC4(node, mountpoint, options2, location,
			    map, lineno);
			mountpoint = options2 = location = NULL;
again:
			ret = FUNC6();
			if (ret == 0 || ret == NEWLINE) {
				if (mountpoint != NULL || options2 != NULL ||
				    location != NULL) {
					FUNC2(1, "truncated entry "
					    "in %s, line %d", map, lineno);
				}
				break;
			}
		}
	}
}