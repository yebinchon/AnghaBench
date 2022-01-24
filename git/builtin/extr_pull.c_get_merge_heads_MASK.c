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
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct oid_array*,struct object_id*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct object_id*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(struct oid_array *merge_heads)
{
	const char *filename = FUNC1(the_repository);
	FILE *fp;
	struct strbuf sb = STRBUF_INIT;
	struct object_id oid;

	fp = FUNC7(filename, "r");
	while (FUNC5(&sb, fp) != EOF) {
		const char *p;
		if (FUNC3(sb.buf, &oid, &p))
			continue;  /* invalid line: does not start with object ID */
		if (FUNC4(p, "\tnot-for-merge\t"))
			continue;  /* ref is not-for-merge */
		FUNC2(merge_heads, &oid);
	}
	FUNC0(fp);
	FUNC6(&sb);
}