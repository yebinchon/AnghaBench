#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
typedef  scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int /*<<< orphan*/ ) ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (unsigned int,struct object_id*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*,struct object_id*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 char* FUNC9 (char*,char) ; 
 unsigned long FUNC10 (char*,char**,int) ; 
 TYPE_1__* the_hash_algo ; 
 scalar_t__ FUNC11 (struct strbuf*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC13(int nul_term_line)
{
	const int hexsz = the_hash_algo->hexsz;
	struct strbuf buf = STRBUF_INIT;
	struct strbuf uq = STRBUF_INIT;
	strbuf_getline_fn getline_fn;

	getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;
	while (getline_fn(&buf, stdin) != EOF) {
		char *ptr, *tab;
		char *path_name;
		struct object_id oid;
		unsigned int mode;
		unsigned long ul;
		int stage;

		/* This reads lines formatted in one of three formats:
		 *
		 * (1) mode         SP sha1          TAB path
		 * The first format is what "git apply --index-info"
		 * reports, and used to reconstruct a partial tree
		 * that is used for phony merge base tree when falling
		 * back on 3-way merge.
		 *
		 * (2) mode SP type SP sha1          TAB path
		 * The second format is to stuff "git ls-tree" output
		 * into the index file.
		 *
		 * (3) mode         SP sha1 SP stage TAB path
		 * This format is to put higher order stages into the
		 * index file and matches "git ls-files --stage" output.
		 */
		errno = 0;
		ul = FUNC10(buf.buf, &ptr, 8);
		if (ptr == buf.buf || *ptr != ' '
		    || errno || (unsigned int) ul != ul)
			goto bad_line;
		mode = ul;

		tab = FUNC9(ptr, '\t');
		if (!tab || tab - ptr < hexsz + 1)
			goto bad_line;

		if (tab[-2] == ' ' && '0' <= tab[-1] && tab[-1] <= '3') {
			stage = tab[-1] - '0';
			ptr = tab + 1; /* point at the head of path */
			tab = tab - 2; /* point at tail of sha1 */
		}
		else {
			stage = 0;
			ptr = tab + 1; /* point at the head of path */
		}

		if (FUNC3(tab - hexsz, &oid) ||
			tab[-(hexsz + 1)] != ' ')
			goto bad_line;

		path_name = ptr;
		if (!nul_term_line && path_name[0] == '"') {
			FUNC8(&uq);
			if (FUNC11(&uq, path_name, NULL)) {
				FUNC1("git update-index: bad quoting of path name");
			}
			path_name = uq.buf;
		}

		if (!FUNC12(path_name, mode)) {
			FUNC2(stderr, "Ignoring path %s\n", path_name);
			continue;
		}

		if (!mode) {
			/* mode == 0 means there is no such path -- remove */
			if (FUNC4(path_name))
				FUNC1("git update-index: unable to remove %s",
				    ptr);
		}
		else {
			/* mode ' ' sha1 '\t' name
			 * ptr[-1] points at tab,
			 * ptr[-41] is at the beginning of sha1
			 */
			ptr[-(hexsz + 2)] = ptr[-1] = 0;
			if (FUNC0(mode, &oid, path_name, stage))
				FUNC1("git update-index: unable to update %s",
				    path_name);
		}
		continue;

	bad_line:
		FUNC1("malformed index info %s", buf.buf);
	}
	FUNC7(&buf);
	FUNC7(&uq);
}