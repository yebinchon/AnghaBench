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
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  KERNCONFTAG ; 
 int /*<<< orphan*/  PREFIX ; 
 int /*<<< orphan*/  SBUF_AUTOEXTEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ filebased ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 char* kernconfstr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*) ; 
 char* FUNC13 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct sbuf*) ; 
 struct sbuf* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 char* FUNC18 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(void)
{
	FILE *fo;
	struct sbuf *sb;
	char *p;

	/* Add main configuration file to the list of files to be included */
	FUNC1(PREFIX);
	p = FUNC11("config.c.new");
	fo = FUNC8(p, "w");
	if (!fo)
		FUNC5(2, "%s", p);
	sb = FUNC16(NULL, NULL, 2048, SBUF_AUTOEXTEND);
	FUNC0(sb != NULL);
	FUNC12(sb);
	if (filebased) {
		/* Is needed, can be used for backward compatibility. */
		FUNC4(sb);
	} else {
		FUNC3(sb);
	}
	FUNC15(sb);
	/* 
	 * We print first part of the template, replace our tag with
	 * configuration files content and later continue writing our
	 * template.
	 */
	p = FUNC18(kernconfstr, KERNCONFTAG);
	if (p == NULL)
		FUNC6(EXIT_FAILURE, "Something went terribly wrong!");
	*p = '\0';
	FUNC9(fo, "%s", kernconfstr);
	FUNC9(fo, "%s", FUNC13(sb));
	p += FUNC17(KERNCONFTAG);
	FUNC9(fo, "%s", p);
	FUNC14(sb);
	FUNC7(fo);
	FUNC10(FUNC11("config.c.new"), FUNC11("config.c"));
	FUNC2();
}