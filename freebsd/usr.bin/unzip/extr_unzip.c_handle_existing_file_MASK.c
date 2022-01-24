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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char**,size_t*,char,int /*<<< orphan*/ ) ; 
 int n_opt ; 
 int o_opt ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(char **path)
{
	size_t alen;
	ssize_t len;
	char buf[4];

	for (;;) {
		FUNC3(stderr,
		    "replace %s? [y]es, [n]o, [A]ll, [N]one, [r]ename: ",
		    *path);
		if (FUNC2(buf, sizeof(buf), stdin) == NULL) {
			FUNC0(stdin);
			FUNC6("NULL\n(EOF or read error, "
			    "treating as \"[N]one\"...)\n");
			n_opt = 1;
			return -1;
		}
		switch (*buf) {
		case 'A':
			o_opt = 1;
			/* FALLTHROUGH */
		case 'y':
		case 'Y':
			(void)FUNC7(*path);
			return 1;
		case 'N':
			n_opt = 1;
			/* FALLTHROUGH */
		case 'n':
			return -1;
		case 'r':
		case 'R':
			FUNC6("New name: ");
			FUNC1(stdout);
			FUNC4(*path);
			*path = NULL;
			alen = 0;
			len = FUNC5(path, &alen, '\n', stdin);
			if ((*path)[len - 1] == '\n')
				(*path)[len - 1] = '\0';
			return 0;
		default:
			break;
		}
	}
}