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
typedef  int wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  MB_LEN_MAX ; 
 int /*<<< orphan*/  dflag ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ fflag ; 
 scalar_t__ FUNC2 (int) ; 
 int* FUNC3 (int) ; 
 size_t FUNC4 (int*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (int) ; 
 int* FUNC7 (int*,int) ; 

__attribute__((used)) static wchar_t *
FUNC8(const char *string, wchar_t termchar)
{
	const char *readp;
	wchar_t *key, *writep;
	wchar_t ch;
	size_t clen;

	/*
	 * Reformat search string and convert to wide character representation
	 * to avoid doing it multiple times later.
	 */
	if ((key = FUNC3(sizeof(wchar_t) * (FUNC5(string) + 1))) == NULL)
		FUNC0(2, NULL);
	readp = string;
	writep = key;
	while ((clen = FUNC4(&ch, readp, MB_LEN_MAX, NULL)) != 0) {
		if (clen == (size_t)-1 || clen == (size_t)-2)
			FUNC1(2, EILSEQ, NULL);
		if (fflag)
			ch = FUNC6(ch);
		if (!dflag || FUNC2(ch))
			*writep++ = ch;
		readp += clen;
	}
	*writep = L'\0';
	if (termchar != L'\0' && (writep = FUNC7(key, termchar)) != NULL)
		*++writep = L'\0';
	return (key);
}