#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gctl_req {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  defaultno; } ;
struct TYPE_3__ {int bootcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 char* GPART_FLAGS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ dialog_vars ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*) ; 
 struct gctl_req* FUNC5 () ; 
 char* FUNC6 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct gctl_req*,char*,int,char const*) ; 
 TYPE_1__* FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*) ; 

int
FUNC12(const char *lg_name, const char *scheme)
{
	int cancel;
	struct gctl_req *r;
	const char *errstr;

schememenu:
	if (scheme == NULL) {
		scheme = FUNC1(FUNC2());

		if (scheme == NULL)
			return (-1);

		if (!FUNC10(scheme)) {
			char message[512];
			FUNC11(message, "This partition scheme (%s) is not "
			    "bootable on this platform. Are you sure you want "
			    "to proceed?", scheme);
			dialog_vars.defaultno = TRUE;
			cancel = FUNC3("Warning", message, 0, 0);
			dialog_vars.defaultno = FALSE;
			if (cancel) { /* cancel */
				/* Reset scheme so user can choose another */
				scheme = NULL;
				goto schememenu;
			}
		}
	}

	r = FUNC5();
	FUNC7(r, "class", -1, "PART");
	FUNC7(r, "arg0", -1, lg_name);
	FUNC7(r, "flags", -1, GPART_FLAGS);
	FUNC7(r, "scheme", -1, scheme);
	FUNC7(r, "verb", -1, "create");

	errstr = FUNC6(r);
	if (errstr != NULL && errstr[0] != '\0') {
		FUNC9("Error", NULL, errstr);
		FUNC4(r);
		scheme = NULL;
		goto schememenu;
	}
	FUNC4(r);

	if (FUNC0(scheme) != NULL)
		FUNC8(lg_name, 1)->bootcode = 1;
	return (0);
}