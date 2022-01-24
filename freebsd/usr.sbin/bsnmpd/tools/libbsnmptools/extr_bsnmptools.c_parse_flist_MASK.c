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
typedef  char* u_int ;
struct snmp_toolinfo {int dummy; } ;
struct asn_oid {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char* SNMP_DEFS_DIR ; 
 scalar_t__ FUNC0 (struct snmp_toolinfo*,char*,struct asn_oid const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ FUNC4 (char,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int32_t
FUNC9(struct snmp_toolinfo *snmptoolctx, char *value, char *path,
    const struct asn_oid *cut)
{
	int32_t namelen;
	char filename[MAXPATHLEN + 1];

	if (value == NULL)
		return (-1);

	do {
		FUNC5(filename, 0, MAXPATHLEN + 1);

		if (FUNC1(*value) && (path == NULL || path[0] == '\0')) {
			FUNC6(filename, SNMP_DEFS_DIR, MAXPATHLEN + 1);
			namelen = FUNC7(SNMP_DEFS_DIR);
		} else if (path != NULL){
			FUNC6(filename, path, MAXPATHLEN + 1);
			namelen = FUNC7(path);
		} else
			namelen = 0;

		for ( ; namelen < MAXPATHLEN; value++) {
			if (FUNC4(*value, namelen) > 0) {
				filename[namelen++] = *value;
				continue;
			}

			if (*value == ',' )
				value++;
			else if (*value == '\0')
				;
			else {
				if (!FUNC2(*value) || !FUNC3(*value))
					FUNC8("Unexpected character %#2x in"
					    " filename", (u_int) *value);
				else
					FUNC8("Illegal character '%c' in"
					    " filename", *value);
				return (-1);
			}

			filename[namelen]='\0';
			break;
		}

		if ((namelen == MAXPATHLEN) && (filename[MAXPATHLEN] != '\0')) {
			FUNC8("Filename %s too long", filename);
			return (-1);
		}

		if (FUNC0(snmptoolctx, filename, cut, 0) < 0) {
			FUNC8("Error adding file %s to list", filename);
			return (-1);
		}
	} while (*value != '\0');

	return(1);
}