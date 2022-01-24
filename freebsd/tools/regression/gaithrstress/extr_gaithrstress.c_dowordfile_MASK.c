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
typedef  int /*<<< orphan*/  newword ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ ** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t nrandwords ; 
 int /*<<< orphan*/ ** randwords ; 
 size_t FUNC7 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

int
FUNC9(const char *fname)
{
	FILE *fp;
	char newword[64];
	size_t n;

	fp = FUNC5(fname, "r");
	if (fp == NULL)
		return (-1);
	nrandwords = 0;
	while (FUNC4(newword, sizeof(newword), fp) != NULL)
		nrandwords++;
	if (FUNC3(fp) || FUNC6(fp, 0, SEEK_SET) != 0)
		goto fail;
	randwords = FUNC0(nrandwords, sizeof(char *));
	if (randwords == NULL)
		goto fail;
	n = nrandwords;
	nrandwords = 0;
	while (FUNC4(newword, sizeof(newword), fp) != NULL) {
		newword[FUNC7(newword, "\r\n")] = '\0';
		randwords[nrandwords] = FUNC8(newword);
		if (randwords[nrandwords] == NULL)
			FUNC1(1, "reading words file");
		if (++nrandwords == n)
			break;
	}
	nrandwords = n;
	FUNC2(fp);
	return (0);
fail:
	FUNC2(fp);
	return (-1);
}