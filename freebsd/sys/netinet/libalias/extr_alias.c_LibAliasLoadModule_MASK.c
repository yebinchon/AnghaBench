#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proto_handler {int dummy; } ;
struct dll {void* handle; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ moduledata_t ;

/* Variables and functions */
 int /*<<< orphan*/  DLL_LEN ; 
 scalar_t__ EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct proto_handler*) ; 
 int /*<<< orphan*/  RTLD_LAZY ; 
 scalar_t__ FUNC1 (struct dll*) ; 
 char* FUNC2 () ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct dll*) ; 
 struct dll* FUNC7 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(char *path)
{
	struct dll *t;
	void *handle;
	struct proto_handler *m;
        const char *error;
	moduledata_t *p;

        handle = FUNC3 (path, RTLD_LAZY);
        if (!handle) {
		FUNC5(stderr, "%s\n", FUNC2());
		return (EINVAL);
        }

	p = FUNC4(handle, "alias_mod");
        if ((error = FUNC2()) != NULL)  {
		FUNC5(stderr, "%s\n", FUNC2());
		return (EINVAL);
        }

	t = FUNC7(sizeof(struct dll));
	if (t == NULL)
		return (ENOMEM);
	FUNC8(t->name, p->name, DLL_LEN);
	t->handle = handle;
	if (FUNC1(t) == EEXIST) {
		FUNC6(t);
		FUNC5(stderr, "dll conflict\n");
		return (EEXIST);
	}

        m = FUNC4(t->handle, "handlers");
        if ((error = FUNC2()) != NULL)  {
		FUNC5(stderr, "%s\n", error);
		return (EINVAL);
	}

	FUNC0(m);
	return (0);
}