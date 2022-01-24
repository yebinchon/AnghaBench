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
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ lineno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct node*,char*,char*,char*,char const*,scalar_t__) ; 
 int FUNC3 () ; 
 scalar_t__ yytext ; 

__attribute__((used)) static void
FUNC4(struct node *root, const char *master)
{
	char *mountpoint = NULL, *map = NULL, *options = NULL;
	int ret;

	/*
	 * XXX: 1 gives incorrect values; wtf?
	 */
	lineno = 0;

	for (;;) {
		ret = FUNC3();
		if (ret == 0 || ret == NEWLINE) {
			if (mountpoint != NULL) {
				//log_debugx("adding map for %s", mountpoint);
				FUNC2(root, mountpoint, options, map,
				    master, lineno);
			}
			if (ret == 0) {
				break;
			} else {
				mountpoint = map = options = NULL;
				continue;
			}
		}
		if (mountpoint == NULL) {
			mountpoint = FUNC0(yytext);
		} else if (map == NULL) {
			map = FUNC0(yytext);
		} else if (options == NULL) {
			/*
			 * +1 to skip leading "-".
			 */
			options = FUNC0(yytext + 1);
		} else {
			FUNC1(1, "too many arguments at %s, line %d",
			    master, lineno);
		}
	}
}