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
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(const char *what, LPCWSTR wbuf, int wlen)
{
	char *buf;

	if (!wbuf || !wlen) {
		FUNC4("%s=\n", what);
		return;
	}

	int len = FUNC0(CP_UTF8, 0, wbuf, wlen, NULL, 0, NULL,
	    FALSE);
	buf = FUNC6(len);

	if (!FUNC0(CP_UTF8, 0, wbuf, wlen, buf, len, NULL, FALSE))
		FUNC1("WideCharToMultiByte failed!");

	FUNC4("%s=", what);
	FUNC3(buf, 1, len, stdout);
	FUNC5('\n');
	FUNC2(buf);
}