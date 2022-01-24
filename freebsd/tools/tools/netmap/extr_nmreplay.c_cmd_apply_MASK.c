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
struct _qs {int dummy; } ;
struct _cfg {int (* parse ) (struct _qs*,struct _cfg*,int,char**) ;char* optarg; int /*<<< orphan*/  d; scalar_t__ arg_len; int /*<<< orphan*/ * arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char** FUNC5 (char const*,int*) ; 
 int FUNC6 (struct _qs*,struct _cfg*,int,char**) ; 

__attribute__((used)) static int
FUNC7(const struct _cfg *a, const char *arg, struct _qs *q, struct _cfg *dst)
{
	int ac = 0;
	char **av;
	int i;

	if (arg == NULL || *arg == '\0')
		return 1; /* no argument may be ok */
	if (a == NULL || dst == NULL) {
		FUNC0("program error - invalid arguments");
		FUNC3(1);
	}
	av = FUNC5(arg, &ac);
	if (av == NULL)
		return 1; /* error */
	for (i = 0; a[i].parse; i++) {
		struct _cfg x = a[i];
		const char *errmsg = x.optarg;
		int ret;

		x.arg = NULL;
		x.arg_len = 0;
		FUNC2(&x.d, sizeof(x.d));
		FUNC1("apply %s to %s", av[0], errmsg);
		ret = x.parse(q, &x, ac, av);
		if (ret == 2) /* not recognised */
			continue;
		if (ret == 1) {
			FUNC0("invalid arguments: need '%s' have '%s'",
				errmsg, arg);
			break;
		}
		x.optarg = arg;
		*dst = x;
		return 0;
	}
	FUNC0("arguments %s not recognised", arg);
	FUNC4(av);
	return 1;
}