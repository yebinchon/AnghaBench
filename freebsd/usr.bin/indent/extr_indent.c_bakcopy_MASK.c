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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 char const* bakfile ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (char const*,char*) ; 
 char const* in_name ; 
 int /*<<< orphan*/ * input ; 
 int /*<<< orphan*/ * output ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  simple_backup_suffix ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (int,char*,int) ; 

__attribute__((used)) static void
FUNC10(void)
{
    int         n,
                bakchn;
    char        buff[8 * 1024];
    const char *p;

    /* construct file name .Bfile */
    for (p = in_name; *p; p++);	/* skip to end of string */
    while (p > in_name && *p != '/')	/* find last '/' */
	p--;
    if (*p == '/')
	p++;
    FUNC7(bakfile, "%s%s", p, simple_backup_suffix);

    /* copy in_name to backup file */
    bakchn = FUNC1(bakfile, 0600);
    if (bakchn < 0)
	FUNC2(1, "%s", bakfile);
    while ((n = FUNC6(FUNC4(input), buff, sizeof(buff))) > 0)
	if (FUNC9(bakchn, buff, n) != n)
	    FUNC2(1, "%s", bakfile);
    if (n < 0)
	FUNC2(1, "%s", in_name);
    FUNC0(bakchn);
    FUNC3(input);

    /* re-open backup file as the input file */
    input = FUNC5(bakfile, "r");
    if (input == NULL)
	FUNC2(1, "%s", bakfile);
    /* now the original input file will be the output */
    output = FUNC5(in_name, "w");
    if (output == NULL) {
	FUNC8(bakfile);
	FUNC2(1, "%s", in_name);
    }
}