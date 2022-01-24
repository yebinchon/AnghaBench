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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10(struct strbuf *src, const char *src_repo)
{
	/*
	 * Read from the source objects/info/alternates file
	 * and copy the entries to corresponding file in the
	 * destination repository with add_to_alternates_file().
	 * Both src and dst have "$path/objects/info/alternates".
	 *
	 * Instead of copying bit-for-bit from the original,
	 * we need to append to existing one so that the already
	 * created entry via "clone -s" is not lost, and also
	 * to turn entries with paths relative to the original
	 * absolute, so that they can be used in the new repository.
	 */
	FILE *in = FUNC9(src->buf, "r");
	struct strbuf line = STRBUF_INIT;

	while (FUNC6(&line, in) != EOF) {
		char *abs_path;
		if (!line.len || line.buf[0] == '#')
			continue;
		if (FUNC3(line.buf)) {
			FUNC0(line.buf);
			continue;
		}
		abs_path = FUNC4("%s/objects/%s", src_repo, line.buf);
		if (!FUNC5(abs_path, abs_path))
			FUNC0(abs_path);
		else
			FUNC8("skipping invalid relative alternate: %s/%s",
				src_repo, line.buf);
		FUNC2(abs_path);
	}
	FUNC7(&line);
	FUNC1(in);
}