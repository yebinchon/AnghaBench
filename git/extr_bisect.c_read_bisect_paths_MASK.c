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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct argv_array {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct argv_array*) ; 
 scalar_t__ FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 

__attribute__((used)) static void FUNC9(struct argv_array *array)
{
	struct strbuf str = STRBUF_INIT;
	const char *filename = FUNC3();
	FILE *fp = FUNC8(filename, "r");

	while (FUNC5(&str, fp) != EOF) {
		FUNC7(&str);
		if (FUNC4(str.buf, array))
			FUNC1(FUNC0("Badly quoted content in file '%s': %s"),
			    filename, str.buf);
	}

	FUNC6(&str);
	FUNC2(fp);
}