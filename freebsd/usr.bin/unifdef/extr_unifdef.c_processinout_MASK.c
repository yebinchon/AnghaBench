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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  altered ; 
 char* FUNC0 (char const*,char*) ; 
 char* backext ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 char const* filename ; 
 void* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * input ; 
 char const* linefile ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * output ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 char* tempname ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static void
FUNC13(const char *ifn, const char *ofn)
{
	struct stat st;

	if (ifn == NULL || FUNC11(ifn, "-") == 0) {
		filename = "[stdin]";
		linefile = NULL;
		input = FUNC2(stdin);
	} else {
		filename = ifn;
		linefile = ifn;
		input = FUNC3(ifn, "rb");
		if (input == NULL)
			FUNC1(2, "can't open %s", ifn);
	}
	if (FUNC11(ofn, "-") == 0) {
		output = FUNC2(stdout);
		FUNC6();
		return;
	}
	if (FUNC10(ofn, &st) < 0) {
		output = FUNC3(ofn, "wb");
		if (output == NULL)
			FUNC1(2, "can't create %s", ofn);
		FUNC6();
		return;
	}

	tempname = FUNC0(ofn, ".XXXXXX");
	output = FUNC5(tempname, st.st_mode);
	if (output == NULL)
		FUNC1(2, "can't create %s", tempname);

	FUNC6();

	if (backext != NULL) {
		char *backname = FUNC0(ofn, backext);
		if (FUNC8(ofn, backname) < 0)
			FUNC1(2, "can't rename \"%s\" to \"%s\"", ofn, backname);
		FUNC4(backname);
	}
	/* leave file unmodified if unifdef made no changes */
	if (!altered && backext == NULL) {
		if (FUNC7(tempname) < 0)
			FUNC12("can't remove \"%s\"", tempname);
	} else if (FUNC9(tempname, ofn) < 0)
		FUNC1(2, "can't rename \"%s\" to \"%s\"", tempname, ofn);
	FUNC4(tempname);
	tempname = NULL;
}