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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 scalar_t__ FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const struct object_id *oid)
{
	const char *filename = FUNC3();
	struct stat st;
	struct strbuf str = STRBUF_INIT;
	FILE *fp;
	int res = 0;

	if (FUNC5(filename, &st) || !FUNC0(st.st_mode))
		return 0;

	fp = FUNC2(filename, "r");
	if (!fp)
		return 0;

	if (FUNC6(&str, fp) != EOF)
		res = !FUNC8(str.buf, FUNC4(oid));

	FUNC7(&str);
	FUNC1(fp);

	return res;
}