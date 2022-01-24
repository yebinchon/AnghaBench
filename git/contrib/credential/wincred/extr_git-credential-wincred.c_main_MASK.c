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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* host ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* path ; 
 char* protocol ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  target ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* wusername ; 

int FUNC12(int argc, char *argv[])
{
	const char *usage =
	    "usage: git credential-wincred <get|store|erase>\n";

	if (!argv[1])
		FUNC3(usage);

	/* git use binary pipes to avoid CRLF-issues */
	FUNC2(FUNC1(stdin), _O_BINARY);
	FUNC2(FUNC1(stdout), _O_BINARY);

	FUNC7();

	FUNC6();

	if (!protocol || !(host || path))
		return 0;

	/* prepare 'target', the unique key for the credential */
	FUNC10(target, L"git:");
	FUNC11(target, protocol, FUNC0(target));
	FUNC11(target, L"://", FUNC0(target));
	if (wusername) {
		FUNC11(target, wusername, FUNC0(target));
		FUNC11(target, L"@", FUNC0(target));
	}
	if (host)
		FUNC11(target, host, FUNC0(target));
	if (path) {
		FUNC11(target, L"/", FUNC0(target));
		FUNC11(target, path, FUNC0(target));
	}

	if (!FUNC9(argv[1], "get"))
		FUNC5();
	else if (!FUNC9(argv[1], "store"))
		FUNC8();
	else if (!FUNC9(argv[1], "erase"))
		FUNC4();
	/* otherwise, ignore unknown action */
	return 0;
}